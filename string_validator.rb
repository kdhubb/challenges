class StringValidator
  def validate(string)
    in_out = []
    arr = string.split("")
    arr.keep_if do |char|
      char =~ /[[({\[\]})]]/
    end
    arr.each do |char|
      in_out << char
      if char == "]" && in_out[-2] == "["
        in_out.pop(2)
      elsif char == ")" && in_out[-2] == "("
        in_out.pop(2)
      elsif char == "}" && in_out[-2] == "{"
        in_out.pop(2)
      end
    end
    in_out.empty?
  end
end