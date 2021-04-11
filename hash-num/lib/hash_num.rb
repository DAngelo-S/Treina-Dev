class HashNum
  def find_sequence(num_set, list)
    answer = []
    
    arr = num_set.collect{|key, value| key}

    list.each do |word|
      tmp = []
      index = 0

      word.chars.each do |l|
        while index < arr.size()
          if(num_set[arr[index]].include? l)
            tmp.push(index+1)
            index += 1
            break
          end
          index += 1
        end  
      end
      
      if tmp.size() < word.size()
        tmp = nil
      else
        tmp = tmp.join
      end

      answer.push(tmp)
      tmp = ''

    end

    answer
  end
end
