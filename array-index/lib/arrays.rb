class Arrays
  def self.multiplica_indices(array)
    array.map.with_index do |number, index|
      number * index
    end
  end
end
