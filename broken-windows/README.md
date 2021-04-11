# Janelas Quebradas

O levado gnomo Allaner encontrou um prédio com muitas janelas, mais precisamente uma
grade de 100 janelas organizadas com as coordenadas de `0,0` a `9,9`. Allaner
resolveu brincar de quebrá-las em conjuntos, por exemplo, das janelas da posição
`1,1` até `3,2`, o que resultaria em 6 janelas quebradas: `1,1`, `1,2`, `2,1`,
`2,2`, `3,1` e `3,2`. O bom gnomo Benjaminx viu o que aconteceu e
restaurou as janelas quebradas, mas nas posições de `2,1` até `3,3`, ou seja,
`2,1`, `3,1`, `2,2`, `3,2`, `2,3`, `3,3`. Apesar de errar o alvo, Benjaminx
conseguiu arrumar 4 das 6 janelas quebradas por Allaner.

Allaner gostou dessa brincadeira e quebrou mais janelas! Benjaminx por
sua vez, voltou a restaurá-las, mas sua mira não é muito boa.

A sequência de ações dos gnomos foi registrada numa lista, por exemplo:

```
1,1 3,2 X
2,1 3,3 O
```

Cada linha representa uma ação com as coordenadas das janelas, sendo que 'X' representa
quebra e 'O' representa restauração.

Você deve implementar o código do método que recebe uma lista com uma sequência
de ações e, ao final, retorne o número de janelas que ficaram quebradas depois que
todas elas foram executadas.

No exemplo acima, `2` janelas ainda permanecem quebradas depois de executadas as
duas ações.

Dicas: 
1. em *strings*, uma quebra de linha é indicada com '\n'. 
2. Usar papel e lápis para ilustrar o desafio podem ajudar na elaboração da lógica para o código.
