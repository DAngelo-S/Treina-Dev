# Sequência mais longa

Um grupo de amigos decidiu se organizar para juntos pararem com um vício: jogar
Pokémon Go. Para isso começaram a fazer uma pequena competição, elaborando uma
lista com seus nomes e dias consecutivos que conseguiam ficar sem jogar.
Decidiram tentar por um mês e avaliar seu desempenho. As listas deveriam ficar
mais ou menos assim:

```
HENRIQUE:1 2 3 4 7 8 9 15
ERIKA:1 2 4 5 6 10 11 20 21
JOAO:5 6 7 20 21 22 25 26
```

Cada número anotado indica um dia sem jogar Pokémon e, ao final do mês, a pessoa
com o maior número de dias consecutivos seria vencedora. No exemplo acima,
seria `HENRIQUE` com 4 dias consecutivos, de 1 até 4. `JOAO` e `ERIKA`
conseguiram, no máximo, 3 dias consecutivos.

Henrique era o responsável por compilar todos os dados e apresentá-los no final,
mas devido à abstinência de Pokémon, fez uma confusão na tabela, e agora os dias
estão embaralhados. Seguindo o exemplo anterior, a tabela ficou assim:

```
HENRIQUE:9 15 2 4 3 1 7 8
ERIKA:4 5 2 1 6 10 11 21 20
JOAO:26 25 7 6 5 21 22 20
```

Note como os valores são os mesmos, mas a ordem deles está embaralhada. Você
deve implementar o código que recebe essa lista e retorna o nome com o total
de dias consecutivos, ordenada da menor para a maior. Nesse exemplo, o retorno
seria: `HENRIQUE:1 3 4`, já que temos:

```
15 - 1 único dia

7 8 9 - 3 dias consecutivos

1 2 3 4 - 4 dias consecutivos
```

Em caso de empate, o maior valor seguinte de dias consecutivos é vencedor. Você
pode partir do pressuposto de que, nos testes, há sempre um único vencedor.
