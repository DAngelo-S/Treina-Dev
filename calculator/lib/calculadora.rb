def soma(primeiro_numero, segundo_numero)
    soma = primeiro_numero + segundo_numero
end

def subtracao(primeiro_numero, segundo_numero)
    subtracao = primeiro_numero - segundo_numero
end

def multiplicacao(primeiro_numero, segundo_numero)
    multiplicacao = primeiro_numero * segundo_numero
end

def divisao(primeiro_numero, segundo_numero)
    if(segundo_numero == 0)
        divisao = "Opa! Zero como divisor"
    else
        divisao = primeiro_numero / segundo_numero
    end
end