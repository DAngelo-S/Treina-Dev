class PagamentoCredito < Pagamento
    attr_accessor :juros

    def initialize(produto:, quantidade:, juros:)
        super(produto: produto, quantidade: quantidade)
        @juros = juros.to_f
    end

    def atualizar_valor
        self.valor *= 1 + juros/100
    end

end