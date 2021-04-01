class Arrays
  def self.multiplica_indices(array)
    array.each_with_index do |n, i|
      array[i] = n*i
    end
    array
  end
end
