class SequenceReader
  def next_element(number)
    previous = ''
    cnt = 0
    new_num = []
    number = number.chars

    number.each do |n|
      if(n == previous)
        cnt += 1
      elsif (previous == '')
        previous = n
        cnt += 1
      else 
        new_num.push(cnt.to_s)
        new_num.push(previous)
        previous = n
        cnt = 1
      end
    end

    new_num.push(cnt.to_s)
    new_num.push(previous)

    new_num.join
  end

  def read(sequence, multiplier)
    (1..multiplier).each do
      sequence = next_element(sequence)
    end
    sequence
  end
end

