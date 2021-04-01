class StringUtils
  def wavefy(string)
    string.chars.map.with_index{|c,index| (index.even? ? c.downcase : c.upcase) }.join
  end
end
