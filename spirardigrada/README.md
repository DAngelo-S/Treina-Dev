# Devoradores de Matrizes

Spirardígradas são insetos virtuais que gostam de comer elementos de matrizes de
dados. Eles são compridos como lagartas e vão guardando cada elemento que comem
dentro de suas longas barrigas. Eles são famintos! Mas não conseguem se mover
muito bem, só andam para a frente e viram para a direta. Sempre começam
a comer uma matriz pelo primeiro elemento da primeira linha, e seguem comendo
esta linha até não encontrar mais elementos para comer, então viram para a
direta e seguem numa reta. Ao final, é possível ler toda a sequência de
elementos que ele devorou!

Considere, por exemplo, a seguinte matriz de dados:

```ruby
[[1, 2, 3],
 [4, 5, 6],
 [7, 8, 9]]
```

Depois de devorar essa matriz, seria possível ler na barriga de um
spirardígrada a seguinte sequência:

```ruby
1 2 3 6 9 8 7 4 5
```

Note como essa sequência mostra os dados como se fossem lidos numa
*espiral*, por isso o nome do inseto!

Neste desafio você deve implementar o código que recebe uma matriz e devolve uma
*string* com a sequência de elementos depois de comidos por um spirardígrada.
