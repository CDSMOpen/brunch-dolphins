describe 'Array', ->

  before ->
    
  describe "indexOf", ->
    it "Should return -1 when not present", ->
      expect([1,2,3].indexOf(4)).to.equal(-1)