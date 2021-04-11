# Hashes de letras embaralhadas

Uma forma de estabelecer relações entre diferentes tipos de dados é por meio de
[Hashes](https://ruby-doc.org/core-3.0.0/Hash.html). Por exemplo, se quisermos
associar números a conjuntos de letras, poderíamos fazer algo como:

```ruby
{ '1': 'abc', '2': 'def', '3': 'ghi'... }
```

Essas podem ser feitas da forma como quisermos. A palavra "dia", por exemplo,
poderia estar associada à sequência de números `231`, já que são as chaves que
contém essa sequência de valores.

Alex estava usando uma estrutura semelhante para implementar um sistema
durante uma madrugada, mas dormiu sobre o teclado! Ao acordar, às pressas e
desnorteado, terminou sua implementação e enviou seu código. Mal sabia ele que
agora seu sistema estava com sérios problemas.

Agora as Hashes estavam sendo geradas com letras embaralhadas, por exemplo:

```ruby
{ '1': 'apoe', '2': 'ghkwi', '3': 'gajpw'}
```

Além disso, seu sistema só permite que sejam combinadas chaves da menor para a
maior, ou seja, a palavra "pia" pode ser escrita com as chaves `123`, mas a
palavra "pai" não possui correspondência, pois a sequência `132` não é válida.
Note também que as chaves não podem ser repetidas!

Tente descobrir como foi feita a implementação do código de Alex. O código
deve receber uma *hash* de números com combinações de letras e uma lista de
palavras. Deve ser retornada a sequência de números correspondente nessa
*hash* e `nil` quando não houver correspondência. Considere que se houver mais de uma
sequência correspondente, somente a de número mais baixo deve ser
retornada. Por exemplo, com a *hash*:

```ruby
{ '1': 'aer', '2': 'aqt', '3': 'shr', '4': 'oga' }
```

Dada a lista `['asa', 'bolo']`, a palavra "asa" pode ser escrita com as chaves
`134` e `234`, mas somente `134` deve ser retornada. A palavra "bolo" não tem
correspondência, então ao final deve ser retornado:

```ruby
['134', nil]
```
