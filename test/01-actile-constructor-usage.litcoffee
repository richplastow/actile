01 Actile Constructor Usage
===========================


    tudor.add [
      "01 Actile Constructor Usage"
      tudor.is




      "The class and instance are expected types"


      "The class is a function"
      ªF
      -> Main

      "An instance is an object"
      ªO
      -> new Main { tiles:1 }




      "Constructor must be passed an object"
      tudor.throw


      "If defined, `config` must be an object"
      "`config` is type 'number' not 'object'"
      -> new Main 123



      "`config.tiles` must be a number, or an array of objects"


      "`actile.tiles` is null"
      "`config.tiles` is type 'null' not 'array|number'"
      -> actile = new Main { tiles:null }


      "`actile.tiles` is an array of booleans"
      "`config.tiles` contains type 'boolean'"
      -> actile = new Main { tiles:[true, false] }





      "If `config.tiles` is a number, default Tiles are generated"

Define an `actile` instance with three tiles, using just the number `3`. 

      -> [ new Main { tiles:3 } ]
      tudor.is


      "`actile.tiles` is an array"
      ªA
      (a) -> actile = a.tiles

      tudor.equal

      "`actile.tiles` contains the expected number of elements"
      3
      (a) -> a.tiles.length


      "The `actile.tiles` elements are objects"
      ªO
      (a) -> typeof a.tiles[0]


      "The `actile.tiles` elements are Tile instances"
      true
      (a) -> a.tiles[0] instanceof Tile


      "The `actile.tiles` elements have square aspect ratios"
      1
      (a) -> a.tiles[0].ar




      "If `config.tiles` is an array of objects, config Tiles are generated"

Define an `actile` instance with two tiles, defining aspect ratios. 

      -> [
        new Main
          tiles: [{ar:0.5},{ar:3.5}]
      ]


      "`actile.tiles` contains the expected number of elements"
      2
      (a) -> a.tiles.length


      "The `actile.tiles` elements have the expected aspect ratios"
      '0.5 3.5'
      (a) -> a.tiles[0].ar + ' ' + a.tiles[1].ar

      tudor.throw

      "The array of objects must be valid Tile configs"
      "`ar` is 'regexp' not 'number'"
      -> new Main { tiles:[{ar:/abc/}] }




      "If `config.tiles` is an array of Tiles, no generation is needed"
      tudor.equal

Define an `actile` instance with three tile instances. 

      -> [
        new Main
          tiles: [
            new Tile {ar:4.6}
            new Tile {ar:0.1}
            new Tile {ar:55 }
          ]
      ]


      "`actile.tiles` contains the expected number of elements"
      3
      (a) -> a.tiles.length


      "The `actile.tiles` elements have the expected aspect ratios"
      '4.6 0.1 55'
      (a) -> a.tiles[0].ar + ' ' + a.tiles[1].ar + ' ' + a.tiles[2].ar




      "`config.tiles` can be an array of Tiles, objects, and `undefined`"

Define an `actile` instance with various element types. 

      -> [
        new Main
          tiles: [
            new Tile {ar:4.6}
            undefined
            new Tile
            {ar:22}
          ]
      ]


      "`actile.tiles` contains the expected number of elements"
      4
      (a) -> a.tiles.length


      "The `actile.tiles` elements have the expected aspect ratios"
      '4.6 1 1 22'
      (a) -> a.tiles[0].ar + ' ' + a.tiles[1].ar + ' ' + a.tiles[2].ar + ' ' + a.tiles[3].ar




      "`config.tiles` can be an empty array"

      -> [ new Main {tiles:[]} ]


      "`actile.tiles` contains no elements"
      0
      (a) -> a.tiles.length

@todo test render when there are no elements


    ]






