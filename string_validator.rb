class StringValidator
  def validate(string)
    arr = string.split('')
    arr.keep_if do |char|
      char =~ /[[({})]]/
    end
    if arr.include?("(") && !arr.include?(")")
      false
    elsif # ")" before "(" is false
    elsif arr.include?("[") && !arr.include?("]")
        false
    elsif arr.inclue?("{") && !arr.include?("}")
      false
    end
  end
end