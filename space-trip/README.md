# Viajando pelo espaço

Leia-ticia e Dubas-fett estão planejando suas próximas viagens por planetas que
ainda não tiveram a oportunidade de conhecer. A lista de planetas é grande, mas
o tempo é curto, então querem passar a menor quantidade de tempo possível em
deslocamento. Para isso, dada uma lista de planetas com as distâncias entre
eles, precisam calcular o trajeto em que elas teriam o menor deslocamento total.

Por exemplo, dados os seguintes planetas e distâncias entre eles:

```
Trandosha para Rodia = 42
Quarzite para Rodia = 17
Trandosha para Quarzite = 22
```

Temos os possíveis trajetos:

```
Trandosha -> Quarzite -> Rodia = 39
Trandosha -> Rodia -> Quarzite = 59
Quarzite -> Trandosha -> Rodia = 64
Quarzite -> Rodia -> Trandosha = 59
Rodia -> Trandosha -> Quarzite = 59
Rodia -> Quarzite -> Trandosha = 39
```

O trajeto que possui menor deslocamento total seria `Trandosha -> Quarzite -> Rodia`
(ou na ordem inversa), de `39`.

Como Leia-ticia e Dubas-fett têm uma lista grande de planetas, sabem que
provavelmente não conseguirão visitar todos eles. Assim, em seus cálculos, estão
considerando que o trajeto final pode ter menos planetas que o total listado.
Por exemplo, dada uma lista de 9 planetas, querem calcular o menor trajeto que
contemple quaisquer 7 deles.

Neste desafio, você deve implementar o código do método que recebe uma lista de
planetas com as distâncias entre eles e um número de planetas que devem ser
contemplados no trajeto, depois retorna o trajeto de menor distância
total. Considere que o trajeto calculado sempre terá exatamente o número de planetas
passado ao método.
