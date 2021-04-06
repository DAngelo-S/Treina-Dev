class Pagamento
    attr_accessor :quantidade, :produto, :preco, :valor
    def initialize(quantidade:, produto: "Sem nome", preco:)
        @quantidade = quantidade
        @produto = produto
        @preco = preco
    end

    def calcular_valor
        @valor = preco.to_i*quantidade.to_i
    end

    def aplicar_desconto(desconto)
        @valor = @valor*(1 - desconto.to_f / 100)
    end
end
