class CharacterShifter
  def execute(instructions, collection)

    instructions.split(" ").each do |line|
      
      symbol = line.chars.map { |i| 
        if i.to_i.to_s != i 
          i 
        end
      }.join
      
      number = line.split(Regexp.union([':', '<', '>'])).reject{|s| s.empty?}.map{|i| i.to_i}

      if symbol == ":<"
        collection[number[0]] = collection[number[0]].chars.rotate(number[1]).join
      elsif symbol == ":>"
        collection[number[0]] = collection[number[0]].chars.rotate(-number[1]).join
      else
        collection[number[0]] = collection[number[0]].chars
        collection[number[1]] = collection[number[1]].chars

        tmp = collection[number[0]][number[2]]
        collection[number[0]][number[2]] = collection[number[1]][number[2]]
        collection[number[1]][number[2]] = tmp

        collection[number[0]] = collection[number[0]].join
        collection[number[1]] = collection[number[1]].join
      end

    end

    collection
  end
end
