# Encontrar repetições e retorna soma

Neste desafio você vai implementar o código do método que recebe uma lista de
*strings* e dois números. Esse método deve analisar cada *string*, buscando as
letras que se repetem, de acordo com os números passados ao método. Por exemplo:

```
Números: 2 e 3

Lista
=====

aabcdef -> 'a' aparece duas vezes
abcccde -> 'c' aparece três vezes
abcdefg -> letras não repetem
aabbcde -> 'a' e 'b' repetem, mas são contados apenas uma vez
aaabbcd -> 'a' aparece três vezes e 'b' duas vezes, a string conta para ambos
```

Assim, 3 *strings* repetem letras 2 vezes, e 2 *strings* que repetem letras 3
vezes. Então o valor que deve ser retornado será a soma `3 + 2`, logo `5`.


