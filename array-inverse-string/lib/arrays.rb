class Arrays
   def inverse_strings(array)
    array.select{|string| ! array.include? string.reverse}
  end
end

