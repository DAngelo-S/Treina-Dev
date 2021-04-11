class Sequence
  def count_ordered(list)
    max = []
    max_name = ''

    list.each do |line|

      line = line.split(":")
      name = line[0]
      days = line[1].split(" ").map{|n| n.to_i}.sort()

      tmp = []
      cnt = 0

      days.each_with_index do |value, index|
        cnt += 1
        if index + 1 >= days.size() or value.to_i != days[index+1].to_i - 1
          tmp.push(cnt)
          cnt = 0
        end
      end

      tmp = tmp.uniq.sort()
      if(max.empty? or tmp[tmp.size()-1] > max[max.size()-1])
        max = tmp
        max_name = name
      end

    end
    
    max = max_name + ":" + max.join(" ")
  end
end
