
# CATP #12

### Questão 01

| RA   | VARIAVEIS AUTOMATICAS  | VD              | VE              |
|------+------------------------+-----------------+-----------------|
| main | char e, char f, char g | início da pilha | início da pilha |
| fun2 | int b, int c           | main            | global          |
| fun1 | float a                | fun2            | global          |
| fun1 | float a                | fun1            | global          |
| fun3 | float d                | fun1            | global          |


### Questão 02

| RA   | VARIAVEIS (bytes)        | VD + VE (bytes) | ESTADO (bytes)  |
|------+--------------------------+-----------------+-----------------|
| main | 1 * 3 (3 chars e, f, g)  | 4 + 4           | 8               |
| fun2 | 4 * 2 (2 ints b, c)      | 4 + 4           | 8               |
| fun1 | 4 (float a)              | 4 + 4           | 8               |
| fun1 | 4 (float a)              | 4 + 4           | 8               |
| fun3 | 4 (float d)              | 4 + 4           | 8               |



### Questão 03

| Método              | Ponto | value | list        |
|---------------------+-------+-------+-------------|
| por Valor           | A     | 3     | {1,3,5,7,9} |
| por Valor           | B     | 3     | {1,3,5,7,9} |
| por Valor           | C     | 3     | {1,3,5,7,9} |
|---------------------+-------+-------+-------------|
| por Referência      | A     | 1     | {3,3,5,7,9} |
| por Referência      | B     | 1     | {3,3,5,7,9} |
| por Referência      | C     | 3     | {3,1,5,7,9} |
|---------------------+-------+-------+-------------|
| por Valor-Resultado | A     | 1     | {3,3,5,7,9} |
| por Valor-Resultado | B     | 1     | {3,3,5,7,9} |
| por Valor-Resultado | C     | 3     | {3,3,5,1,9} |


### Questão Opicional

| Método              | Valor do vetor =list= no final |
|---------------------+--------------------------------|
| por Valor           | {1, 3}                         |
| por Referência      | {2, 6}                         |
| por Valor-Resultado | {2, 6}                         |

