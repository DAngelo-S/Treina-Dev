class ArrayUtils
  def self.compara(lista1, lista2)
    (lista1.sort == lista2.sort)
  end

  def self.divisiveis(num1, num2)
    [(1..50).map{|i| i*num1}.select{|j| j % num1 == 0 && j % num2 == 0 && j <= 50}, 
      (1..50).map{|i| i*num1}.select{|j| j % num2 != 0 && j <= 50}, 
      (1..50).map{|i| i*num2}.select{|j| j % num1 != 0 && j <= 50}]
  end

  def self.soma(list)
    list.sum
  end

  def self.combinar(numeros, letras)
    resp = []
    numeros.each do |n|
      resp += letras.map{|l| [n, l]}
    end
    resp
  end
end
