# Expansor de Strings

H3rik0 e Kl4udi0 são irmãos que moram em dois planetas muito distantes entre si.
Como gostam de trocar mensagens frequentemente, criaram um formato
de compressão de arquivos para reduzir o tamanho e facilitar sua transmissão.

Neste formato, uma sequência de caracteres comprimida possui marcadores que
indicam como dever ser feita a descompressão. Por exemplo:

- `(3x)AB` -> `ABABAB`.
- `(2x)(3x)CI` -> `CICICICICICI`
- `(2x)ER(1x)TEE` -> `ERERTEE`

Neste desafio você deve implementar o método que recebe uma sequência de
caracteres comprimida e retorna a *string* descomprimida.

