Algoritmo "PREENCHER"

Var
   numeros:vetor[1..3,1..2] de inteiro
   i, j: inteiro
Inicio

   para i de 1 ate 3 faca
      para j de 1 ate 2 faca
         Escreval("Digite um valor para a posi��o [",i,",",j,"]")
         Leia(numeros[i,j])
         LimpaTela
      fimPara
   fimpara

   para i de 1 ate 3 faca
      para j de 1 ate 2 faca
         Escreval("Posi��o [",i,",",j,"]:",numeros[i,j])
      fimPara
   fimPara

Fimalgoritmo