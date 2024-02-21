class StringValidator
  # def validate(string)
  #   arr = string.split('')
  #   arr.keep_if do |char|
  #     char =~ /[[({})]]/
  #   end
  #   if arr.include?("(") && !arr.include?(")")
  #     false
  #   elsif # ")" before "(" is false
  #   elsif arr.include?("[") && !arr.include?("]")
  #       false
  #   elsif arr.inclue?("{") && !arr.include?("}")
  #     false
  #   end
  # end

# iterate through string. If there's any brackets, record what type 
# and index position.
# Have 6 variables with arrays of index positions. Each variable
# represents either r or l square bracket, r or l curly, etc. 
# Then compare r and l of each type of bracket variables to 
# make sure index positions are corresponding.
# E.G. right_parenthesis = [1, 3]
# & left_parenthesis = [0, 2 ]
# Each left bracket index must have a right bracket index greater than itself.


  # def validate(string)
  #   right_parenthesis = []
  #   left_parenthesis = []
  #   right_curly = []
  #   left_curly = []
  #   right_square = []
  #   left_square = []

  #   arr = string.split('')
  #   arr.each_with_index do |element, i|
  #     if element == ")"
  #       right_parenthesis << i 
  #     elsif element == "("
  #       left_parenthesis << i
  #     elsif element == "}" 
  #       right_curly << i 
  #     elsif element == "{" 
  #       left_curly << i 
  #     elsif element == "]"
  #       right_square << i  
  #     elsif element == "["
  #       left_square << i 
  #     end
  #   end
  #   if right_parenthesis.length != left_parenthesis.length ||
  #     right_curly.length != left_curly.length ||
  #     right_square.length != left_square.length
  #     false
  #   else 
  #     right_parenthesis.each do |r_index|
  #       left_parenthesis.each do |l_index|

  #       end
  #     end
  #   end
  # end

  
end