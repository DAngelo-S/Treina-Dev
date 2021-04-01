class Chars
  def unique_quantity(text)
    text.split(" ").map{|string| string.chars.uniq.size}.sum
  end
end
