Algoritmo "VETOR_NOTAS"

Var
   nota:vetor[1..7] de real
   media:real
   i:inteiro
   pausar:caractere
Inicio

   Para i de 1 ate 7 faca

      repita
         Escreval("Digite a",i,"� nota:")
         Leia(nota[i])
         LimpaTela
      at� (nota[i] >= 0) e (nota[i] <= 10)

   fimPara
   Para i de 1 ate 7 faca
      Escreval(i,"� nota:",nota[i])
      media <- media + nota[i]
   fimPara

   media <- media / i
   Escreval
   Escreval("A m�dia das",i," notas �:",media:5:2)
   Escreval
   Escreval("Pressione ENTER para continuar!")
   Leia(pausar)
   LimpaTela

Fimalgoritmo