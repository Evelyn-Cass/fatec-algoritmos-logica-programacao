Algoritmo "CHURRASCO"

Var
   nomeItem:vetor[1..5] de caractere
   quantidadeItem:vetor[1..5] de real
   valorItem:vetor[1..5] de real
   totalItem:vetor[1..5] de real
   quantidadePessoas:inteiro]
   valorTotal:real
   valorIndividual:real
   i:inteiro
Inicio

   valorTotal <- 0

   Escreval("Quantas pessoas v�o participar do churrasco?")
   Leia(quantidadePessoas)
   LimpaTela

   Para i de 1 at� 5 fa�a
      Escreval("Qual � o nome do ",i,"� produto?")
      Leia(nomeItem[i])
      LimpaTela

      Escreval("Qual � a quantidade do ",i,"� produto?")
      Leia(quantidadeItem[i])
      LimpaTela

      Escreval("Qual � a valor do ",i,"� produto?")
      Leia(valorItem[i])
      LimpaTela

      totalItem[i] <- valorItem[i] * quantidadeItem[i]

      valorTotal <- valorTotal + totalItem[i]

   FimPara

   valorIndividual <- valorTotal / quantidadePessoas


   Escreval("                    CHURRASCO")
   Escreval("----------------------------------------------------")
   Escreval("N�mero de produtos:",i)

   para i de 1 at� 5 fa�a
      Escreval(i,"� produto:",nomeItem[i]," valor:",totalItem[i])
   fimPara
   
   Escreval("Valor Total:",valorTotal)
   Escreval("N�mero de participantes:",quantidadePessoas)
   Escreval("Valor Individual:",valorIndividual)
   Escreval("----------------------------------------------------")


Fimalgoritmo