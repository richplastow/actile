Main
====

#### The main class for Actile

    class Main
      C: ªC
      toString: -> "[object #{@C}]"

      constructor: (config={}) ->

        if ªO != typeof config
          throw Error "`config` is type '#{ªtype config}' not 'object'"




Properties
----------


#### `tiles <Array>`
Xx. @todo describe

        if ªN == ªtype config.tiles
          @tiles = Array config.tiles
        else if ªA != ªtype config.tiles then throw Error "
          `config.tiles` is type '#{ªtype config.tiles}' not 'array|number'"
        else @tiles = config.tiles


Replace `undefined` elements in `@tiles` with instances of Tile. 

        i = 0; l = @tiles.length
        while i<l
          tile = @tiles[i]
          if ! (tile instanceof Tile)    # instances of Tile are allowed
            if      ªO == ªtype tile   # objects are treated as Tile configs
              @tiles[i] = new Tile tile
            else if ªU == ªtype tile   # `undefined` generates a default Tile
              @tiles[i] = new Tile
            else
              throw Error "`config.tiles` contains type '#{ªtype tile}'"
          i++



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



