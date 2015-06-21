Tile
====

#### Represents an Actile tile

    class Tile
      C: 'Tile'
      toString: -> "[object #{@C}]"

      constructor: (config={}) ->




Properties
----------


#### `ar <number>`
The tile’s aspect ratio, eg `1.778` for a 16/9 shaped tile. 

        if ªU == ªtype config.ar
          @ar = 1 # square by default
        else if ªN != ªtype config.ar
          throw Error "`ar` is '#{ªtype config.ar}' not 'number'"
        else @ar = config.ar




Methods
-------


#### `yy()`
- `xx <xx>`  Xx 

Xx. @todo describe

      yy: (xx) ->




Functions
---------


#### `zz()`
- `xx <xx>`  Xx 

Xx. @todo describe

    zz = (xx) ->



