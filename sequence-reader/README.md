# Leitor de sequências

Em matemática existe uma sequência de inteiros que seria
algo assim:

```
1, 11, 21, 1211, 111221, 312211, 13112221... e assim por diante
```

Essa progressão se forma como se os números fossem lidos em voz alta. Por
exemplo, na sequência `112`, o número `1` aparece duas vezes (dois `1`) e o
número `2` aparece uma vez (um `2`), assim poderia ser lido: `2112`.

A sequência é gerada iterativamente, usando o valor gerado como
base para criar o próximo número.

Neste desafio você vai implementar o método que recebe um valor base e um
número multiplicador e aplica a lógica da sequência tantas vezes
quanto indicado pelo multiplicador. Por exemplo:

```
sequência base inicial: 11223
multiplicador: 2

Aplicando o algoritmo:

11223
212213
1211221113

Retorno: 1211221113
```


