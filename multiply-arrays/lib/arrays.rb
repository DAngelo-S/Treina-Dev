class Arrays
  def self.multiplica_antecessor_predecessor(array)
    new_array = []
    array.each_with_index do |n, i|
      if(i == 0 && i+1 < array.size)
        new_array[i] = array[i]*array[i+1]
      elsif(i == array.size - 1 && i - 1 >= 0)
        new_array[i] = array[i]*array[i-1]
      elsif (i-1 >= 0 && i+1 < array.size)
        new_array[i] = array[i-1] * array[i+1]
      end
    end
    new_array
  end
end
