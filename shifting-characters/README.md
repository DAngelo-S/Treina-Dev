# Caracteres inconstantes

Neste desafio vamos criar um embaralhador de letras. O código deve receber um
conjunto de *strings* de caracteres e instruções para embaralhar as letras
dessas *strings*.

As instruções podem ser de dois tipos: (1) os caracteres podem ser deslocados para a
direita ou para a esquerda uma certa quantidade de posições, (2) caracteres
numa determinada posição em duas linhas diferentes podem ser trocados de lugar
um com o outro. As instruções são indicadas da seguinte maneira:

```
0:<1 move todos os caracteres da primeira linha uma posição para a esquerda.

1:>2 move todos os caracteres da segunda linha 2 posições para a direita.

2<>3:1 os caracteres na posição 1 das linhas 2 e 3 trocam de lugar um com o outro.
```

Por exemplo, temos a sequência de caracteres:

```
['ABCDE',
 'FGHIJ']
```

E as instruções a seguir:

```
0:<1
0<>1:2
1:>2
```

Cada instrução é apresentada em uma linha e a execução das ações deste exemplo
resultam em:

```
['BCHEA',
 'IJFGD']
```
