class Remainders
  def calculate(string)
    numbers = string.split(" ")

    (0..numbers.size()-2).each do |i|
      (i+1..numbers.size()-1).each do |j|
        if numbers[i].to_i % numbers[j].to_i == 0 or numbers[j].to_i % numbers[i].to_i == 0
          return numbers[i].to_i + numbers[j].to_i
        end
      end
    end

    nil
  end
end
