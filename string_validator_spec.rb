require "./string_validator.rb"


RSpec.describe StringValidator do 
  before(:each) do 
    @v = StringValidator.new
  end
  describe "instance methods" do 
    it "#validate" do 
      expect(@v.validate("()")).to be(true)
      expect(@v.validate("([{}[]])")).to be(true)
      expect(@v.validate("()[")).to be(false)
      expect(@v.validate("([)]")).to be(false)
    end
    
    it "#validate with other characters" do 
      expect(@v.validate("(9)")).to be(true)
      expect(@v.validate("([jhi{}[]9jh])")).to be(true)
      expect(@v.validate("(dsfgh)[4")).to be(false)
      expect(@v.validate("([boih)2g]")).to be(false)
    end
  end
end