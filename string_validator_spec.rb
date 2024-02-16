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
  end
end