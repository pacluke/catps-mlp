# CATP #03
### Questão 01

Elaborar a função construir, que recebe uma lista de funções e um argumento. Ela deve retornar uma lista correspondente a aplicação de cada função da lista de entrada ao argumento.

###Questão 02

Transforme as funções do exercício anterior em funções que recebam dois argumentos (e não uma lista com dois valores). Reimplemente então a função construir, nomeando-a construirdois de forma a aceitar uma lista de funções e demais argumentos, retornando uma lista correspondente a aplicação de cada função da primeira lista de entrada aos argumentos seguintes.

### Questão 03

Elabore uma função duplica que receba uma lista e devolva uma lista com os elementos duplicados (multiplicados por 2), usando lapply e funções anônimas.

### Questão 04

Elabore uma função cujo nome é soma que some os elementos de uma lista usando apenas recursão (sem laços iterativos).

### Questão 05

Usando lapply e funções anônimas, elabore uma função positivos que receba uma lista e devolva uma lista indicando se os elementos são positivos (TRUE) ou negativos (FALSE).

### Questão 06

Elabore uma função norma que receba uma lista, representando um vetor euclidiano, e calcule a norma quadrática de tal vetor, conforme a definição seguinte:

`||V|| = \sqrt{x_1^2 + x_2^2 + ... + x_n^2}`

ou seja, o somatório do quadrado dos números presentes em tal lista.

## Questões Opcionais

### Questão 01

Elabore uma função produtoInterno que receba duas listas, cada uma representando um vetor Euclidiano diferente, e calcule o seu produto interno, conforme a definição seguinte:

`A.B = \sum_{i=1}^{n}{A_i * B_i}`

Note que tal definição leva em conta que os valores do vetor estão normalizados entre 0 e 1.

### Questão 02

Elaborar uma função similaridade que receba duas listas de números, cada uma representando um vetor de características textuais, e calcule a sua similaridade utilizando a definição seguinte:

`sim(A,B) = \frac{A.B}{||A||*||B||}`

Utilize livremente as funções elaboradas nos exercícios anteriores. Mais informações sobre a função de similaridade podem ser encontradas aqui:

[Similaridade por Coseno](http://en.wikipedia.org/wiki/Cosine_similarity)




