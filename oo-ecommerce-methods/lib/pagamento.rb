class Pagamento
  attr_accessor :produto, :quantidade, :preco, :valor

  def initialize(quantidade:, produto: Produto.new())
    @quantidade = quantidade
    @produto = produto
  end

  def calcular_valor()
    @valor = @quantidade * @produto.preco
    @produto.remove_estoque(@quantidade)
  end

  def aplicar_desconto(porcentagem)
    @valor -= @valor * porcentagem/100
  end
end

