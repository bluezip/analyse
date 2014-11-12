'use strict'

Analyse   = require './'
should    = require 'should'
path      = require 'path'
fs        = require 'fs'

describe 'Analyse report', ->

  describe 'image', ->

    it 'show data from json should not exist', ->
      data    =
        ref: 'REF12345'
        chemical: [
          {name: 'Silver (Ag)', value: '95.34'}
          {name: 'Copper (Cu)', value: '4.66'}
        ]
        output: path.join('asserts','test.jpg')

      analyse = new Analyse(data);
      analyse.draw (err)->
        should.not.exist(err)
        (fs.existsSync(data.output)).should.be.true

