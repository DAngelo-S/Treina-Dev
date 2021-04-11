class WordHunter
  def hunt(matrix, words)
    words = words.split(" ")
    finds = []
    
    matrix.each do |line|
      words.each do |word|
        if line.join.include? word or line.join.include? word.reverse
          finds.push(word)
          words.delete(word)
        end
      end
    end

    matrix.transpose.each do |line|
      words.each do |word|
        if line.join.include? word or line.join.include? word.reverse
          finds.push(word)
          words.delete(word)
        end
      end
    end

    finds.sort.join(" ")
  end
end
