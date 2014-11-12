'use strict'

analyse   = require './'
should    = require 'should'

describe 'Analyse report', ->

  # check module should
  describe 'test should', ->
    it 'should is not exist', ->
      (true).should.be.a.true
