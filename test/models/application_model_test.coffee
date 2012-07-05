ApplicationModel = require 'models/ApplicationModel'

describe "ApplicationModel", ->
	beforeEach ->
		@model = new ApplicationModel 'title': 'hey'
		
	it "Should have the proper title", ->
		expect(@model.get('title')).to.equal "hey"
		
	it "Should be ok", ->
		expect(true).to.be.ok