class StringExpander
  def numeric? (num)
    num.to_i.to_s == num
  end

  def expand(instructions)
    delimiters = ['x)', '(']
    instructions = instructions.split(Regexp.union(delimiters))
    
    multiplier = 1
    string = ""

    instructions.each do |word|
      if(word.empty?)
      elsif(numeric?(word))
        multiplier *= word.to_i 
      else 
        (1..multiplier).each do
          string.concat(word)
        end
        multiplier = 1
      end
    end

    string
  end
end
