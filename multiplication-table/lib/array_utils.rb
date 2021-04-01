class ArrayUtils
  def self.multiplos(qtd, multiplo)
    (1..qtd).map {|num| num*multiplo}
  end

  def self.tabuada(num)
    resp = [] 
    (1..num).each do |n|
      resp += [multiplos(10, n)]
    end
    resp
  end
end
