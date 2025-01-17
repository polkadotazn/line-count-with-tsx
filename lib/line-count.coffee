
fs         = require 'fs'
moment     = require 'moment'
sloc       = require 'sloc'
filewalker = require 'filewalker'
parser     = require 'gitignore-parser'
path       = require 'path'

suffixes = [
  "asm"
  "brs"
  "c"
  "cc"
  "clj"
  "cljs"
  "coffee"
  "cpp"
  "cr"
  "cs"
  "css"
  "cxx"
  "erl"
  "go"
  "groovy"
  "gs"
  "h"
  "handlebars", "hbs"
  "hpp"
  "hr"
  "hs"
  "html", "htm"
  "hx"
  "hxx"
  "hy"
  "iced"
  "ino"
  "jade"
  "java"
  "jl"
  "js"
  "jsx"
  "less"
  "ld"
  "lua"
  "ls"
  "m"
  "md"
  "ml"
  "mli"
  "mm"
  "mochi"
  "monkey"
  "mustache"
  "nix"
  "nim"
  "nut"
  "php", "php5"
  "pl"
  "py"
  "r"
  "rb"
  "rkt"
  "rs"
  "sass"
  "scala"
  "scss"
  "styl"
  "svg"
  "swift"
  "ts"
  "tsx"
  "ttslua"
  "vb"
  "vue"
  "xml"
  "yaml"
]

pad = (num, w) ->
  num = '' + num
  while num.length < w then num = ' ' + num
  ' ' + num

addAttrs = (sfx, aIn, b) ->
  a = (aIn[sfx] ?= {})
  for k, v of b
    a[k] ?= 0
    a[k] += v
    null

module.exports =

  activate: ->
    try
      @gitignore = parser.compile fs.readFileSync ".gitignore", "utf8"
    catch e
      @gitignore = null
    @sub = atom.commands.add 'atom-workspace', 'line-count:open': => @open()

  open: ->
    text = ''
    add = (txt) -> text += (txt ? '') + '\n'

    printSection = (title, data) ->
      hdr = '\n' + title + '\n'
      for i in [0...title.length] then hdr += '-'
      add hdr

      maxS = maxC = maxT = 0
      for label, c of data
        maxS = Math.max maxS, c.source
        maxC = Math.max maxC, c.comment
        maxT = Math.max maxT, c.total
        ws = ('' + maxS).length + 1
        wc = ('' + maxC).length + 1
        wt = ('' + maxT).length + 1

      lines = ([label, c] for label, c of data)
      lines.sort()
      for line in lines
        [label, c] = line
        add pad(c.source, ws) + pad(c.comment, wc) + pad(c.total, wt) + '  ' + label
      null

    rootDirPath = atom.project.getDirectories()[0].getPath()
    editor = atom.workspace.getActiveTextEditor()
    if editor and editor.getPath()
      rootDirPath = path.dirname(editor.getPath())
      console.log rootDirPath

    atom.workspace.open('line-count.txt').then (editor) =>
      files    = {}
      typeData = {}
      dirs     = {}
      total    = {}

      filewalker(rootDirPath, maxPending: 4).on("file", (path, stats, absPath) =>
          sfxMatch = /\.([^\.]+)$/.exec path
          if sfxMatch and
              (sfx = sfxMatch[1]) in suffixes and
              path.indexOf('vendor') is -1 and
              path.indexOf('node_modules') is -1 and
              path.indexOf('bower_components') is -1 and
              (not @gitignore or @gitignore.accepts path)

            code = fs.readFileSync absPath, 'utf8'
            code = code.replace /\r/g, ''

            #hack to make sloc count ttslua as lua
            type = sfx
            if type == 'ttslua'
              type = 'lua'

            try
              counts = sloc code, type
            catch e
              add 'Warning: ' + e.message
              return

            dirParts = path.split '/'
            dir = ''
            for dirPart, idx in dirParts
              if idx is dirParts.length-1 then break
              dir += dirPart
              addAttrs dir, dirs, counts
              dir += '/'
            files[path] = counts
            addAttrs sfx, typeData, counts
            addAttrs  '', total,    counts

        ).on("error", (err) ->
          add err.message

        ).on("done", ->
          add '\nLine counts for project ' + rootDirPath + '.'
          add 'Generated by the Atom editor package Line-Count on ' +
              moment().format 'MMMM D YYYY H:mm.'
          add 'Counts are in order of source, comments, and total.'

          printSection 'Files',       files
          printSection 'Directories', dirs
          printSection 'Types',       typeData
          printSection 'Total',       total

          editor.setText text

        ).walk()

  deactivate: ->
    @sub.dispose()



`
`
