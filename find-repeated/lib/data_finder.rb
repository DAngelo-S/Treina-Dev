class DataFinder
  def repeat_N_times?(word, num)
    letters = word.chars.uniq
    letters.each do |l|
      if(word.count(l) == num) 
        return 1
      end
    end
    return 0
  end

  def find_and_sum(list, a, b)
    cnt = 0

    list.each do |word|
      cnt += repeat_N_times?(word, a) + repeat_N_times?(word, b)
    end

    cnt
  end
end
