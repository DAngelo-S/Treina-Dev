class Numbers
  def sum_text(numbers_text)
    sum = 0
    numbers_text.each_line do |line|
      sum += line.to_i
    end
    return sum
  end
end
