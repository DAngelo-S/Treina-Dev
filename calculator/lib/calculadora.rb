def soma(primeiro_numero, segundo_numero)
    return primeiro_numero + segundo_numero
end

def subtracao(primeiro_numero, segundo_numero)
    return primeiro_numero - segundo_numero
end

def multiplicacao(primeiro_numero, segundo_numero)
    return primeiro_numero * segundo_numero
end

def divisao(primeiro_numero, segundo_numero)
    if(segundo_numero == 0)
        return "Opa! Zero como divisor"
    end
    return primeiro_numero / segundo_numero
end