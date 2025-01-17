# line-count package

### Usage

Press ctrl-alt-shift-L (line-count:open), (or ctrl-opt-shift-L for Mac) to open an editor page showing line counts broken down by file, directory, and file type for all files in the project.

File suffixes supported are ..

- .asm
- .c
- .cc
- .clj
- .cljs
- .coffee
- .cpp
- .cr
- .cs
- .css
- .cxx
- .erl
- .go
- .groovy
- .gs
- .h
- .handlebars
- .hbs
- .hpp
- .hr
- .hs
- .html
- .htm
- .hx
- .hxx
- .hy
- .iced
- .ino
- .jade
- .java
- .jl
- .js
- .jsx
- .less
- .ld
- .lua
- .ls
- .m
- .md
- .ml
- .mli
- .mm
- .mochi
- .monkey
- .mustache
- .nix
- .nim
- .nut
- .php
- .php5
- .pl
- .py
- .r
- .rb
- .rkt
- .rs
- .sass
- .scala
- .scss
- .styl
- .svg
- .swift
- .ts
- .tsx
- .vb
- .xml
- .yaml

If you want to add a new type fork this project and do it yourself.

### Example Output

    Line counts for project c:\apps\line-count\test\exoplanets.
    Generated by the Atom editor package Line-Count on July 18 2014 15:26.
    Counts are in order of source, comments, and total.

    Files
    -----
          0     1      3  app/assets/javascripts/admin/application.js.coffee
          3     6     11  app/assets/javascripts/application.js.coffee
          6     0      9  app/assets/javascripts/cards.js.coffee
         18     1     27  app/assets/javascripts/forms.js.coffee
         18     2     33  app/assets/javascripts/pixi_boot.js.coffee
         25     6     46  app/assets/javascripts/planets/boot.js.coffee
         22     0     29  app/assets/javascripts/planets/cloud.js.coffee
         38     2     50  app/assets/javascripts/planets/orbitable.js.coffee
         22     0     33  app/assets/javascripts/planets/planet.js.coffee
          7     0     10  app/assets/javascripts/planets/random.js.coffee
          4     0      9  app/assets/javascripts/planets/utils.js.coffee
         57     9     96  app/assets/javascripts/three_boot.js.coffee
         53     1     59  public/404.html
         53     1     59  public/422.html
         52     1     58  public/500.html
          1     1      3  vendor/assets/javascripts/chosen.jquery.min.js
       8343   387  10358  vendor/assets/javascripts/pixi.dev.js
         60     6    109  vendor/assets/javascripts/postprocessing/BloomPass.js
         32     0     54  vendor/assets/javascripts/postprocessing/DotScreenPass.js
         79     1    145  vendor/assets/javascripts/postprocessing/EffectComposer.js
         33     0     55  vendor/assets/javascripts/postprocessing/FilmPass.js
         45     5     87  vendor/assets/javascripts/postprocessing/MaskPass.js
         30     0     52  vendor/assets/javascripts/postprocessing/RenderPass.js
         32     0     56  vendor/assets/javascripts/postprocessing/SavePass.js
         29     0     52  vendor/assets/javascripts/postprocessing/ShaderPass.js
         24     0     41  vendor/assets/javascripts/postprocessing/TexturePass.js
         18     0     32  vendor/assets/javascripts/shaders/BasicShader.js
         39     0     65  vendor/assets/javascripts/shaders/BleachBypassShader.js
         32     0     52  vendor/assets/javascripts/shaders/BlendShader.js
         86     0    117  vendor/assets/javascripts/shaders/BokehShader.js
        265     0    379  vendor/assets/javascripts/shaders/BokehShader2.js
         37     0     59  vendor/assets/javascripts/shaders/BrightnessContrastShader.js
         29     0     49  vendor/assets/javascripts/shaders/ColorCorrectionShader.js
         29     0     50  vendor/assets/javascripts/shaders/ColorifyShader.js
         57     2    102  vendor/assets/javascripts/shaders/ConvolutionShader.js
         27     0     47  vendor/assets/javascripts/shaders/CopyShader.js
         36     0     59  vendor/assets/javascripts/shaders/DOFMipMapShader.js
         42     0     69  vendor/assets/javascripts/shaders/DotScreenShader.js
         65     3     94  vendor/assets/javascripts/shaders/EdgeShader.js
         48     2     74  vendor/assets/javascripts/shaders/EdgeShader2.js
         68     0    101  vendor/assets/javascripts/shaders/FXAAShader.js
         61    11    105  vendor/assets/javascripts/shaders/FilmShader.js
         59     0     92  vendor/assets/javascripts/shaders/FocusShader.js
         49     0     75  vendor/assets/javascripts/shaders/FresnelShader.js
         42     0     63  vendor/assets/javascripts/shaders/HorizontalBlurShader.js
         44     0     66  vendor/assets/javascripts/shaders/HorizontalTiltShiftShader.js
         46     2     70  vendor/assets/javascripts/shaders/HueSaturationShader.js
         42     0     61  vendor/assets/javascripts/shaders/KaleidoShader.js
         28     0     51  vendor/assets/javascripts/shaders/LuminosityShader.js
         40     0     59  vendor/assets/javascripts/shaders/MirrorShader.js
         33     0     54  vendor/assets/javascripts/shaders/NormalMapShader.js
         38     0     57  vendor/assets/javascripts/shaders/RGBShiftShader.js
        151     9    260  vendor/assets/javascripts/shaders/SSAOShader.js
         33     0     55  vendor/assets/javascripts/shaders/SepiaShader.js
         45     2     79  vendor/assets/javascripts/shaders/TriangleBlurShader.js
         33     1     58  vendor/assets/javascripts/shaders/UnpackDepthRGBAShader.js
         42     0     63  vendor/assets/javascripts/shaders/VerticalBlurShader.js
         44     0     66  vendor/assets/javascripts/shaders/VerticalTiltShiftShader.js
         38     3     64  vendor/assets/javascripts/shaders/VignetteShader.js
      20747  1152  36909  vendor/assets/javascripts/three.js
          1     1      4  vendor/assets/stylesheets/chosen.min.css

    Directories
    -----------
        220    27    356  app
        220    27    356  app/assets
        220    27    356  app/assets/javascripts
          0     1      3  app/assets/javascripts/admin
        118     8    177  app/assets/javascripts/planets
        158     3    176  public
      31202  1588  50672  vendor
      31202  1588  50672  vendor/assets
      31201  1587  50668  vendor/assets/javascripts
        364    12    651  vendor/assets/javascripts/postprocessing
       1746    35   2747  vendor/assets/javascripts/shaders
          1     1      4  vendor/assets/stylesheets

    Types
    -----
        220    27    356  coffee
          1     1      4  css
        158     3    176  html
      31201  1587  50668  js

    Total
    -----
      31580  1618  51204  

### Notes

- Any folder named `node_modules` is ignored.
- Please report problems to [github issues](https://github.com/mark-hahn/line-count/issues).

### To-DO

- Add test
- Filtering

### Credit
The engine used by line-count is sloc by Markus Kohlhase.  His project can be found [here](https://github.com/flosse/sloc).

### License
MIT
