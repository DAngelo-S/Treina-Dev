class DataFinder
  def find_and_multiply(list)
    list.each do |n|
      if list.include?(1984-n)
        return n*(1984-n)
      elsif list.include?(n-1984)
        return n*(n-1984)
      end
    end
    nil
  end
end
