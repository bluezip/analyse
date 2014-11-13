'use strict'
gm    = require 'gm'

class app

  constructor: (@data)->

  draw: (cb)->

    img   = gm( @data.source )
    .font( @data.font )
    .fill('#0000ff')
    .fontSize(12);

    img.drawText(135,120, @data.ref);

    name_left   = 55
    value_left  = 250
    top         = 140

    @data.chemical.forEach (v)->

      top = top + 17

      img.drawText(name_left,top, v.name);

      img.drawText(value_left,top, v.value);


    img.write @data.output , cb



module.exports = app
