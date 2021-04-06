class Produto
    attr_accessor :nome, :preco, :categoria, :estoque
    def initialize(nome:, preco:, categoria: 'Geral', estoque:)
      @nome = nome
      @preco = preco
      @categoria = categoria
      @estoque = estoque
    end
  end