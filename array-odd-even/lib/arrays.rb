class Arrays
  def self.converte_impares_por(lista, numero)
    resp = lista.select { |item| item.odd? }
    [resp, resp.map { |item| item * numero}]
  end

  def self.converte_pares_por(lista, numero)
    resp = lista.select { |item| item.even? }
    [resp, resp.map { |item| item * numero}]
  end
end
