Algoritmo "VETOR_CRESCENTE"

Var
   ordem, ordemCrescente, ordemVetor:vetor[1..10] de inteiro
   i,x :inteiro
Inicio




   Para i de 1 at� 10 fa�a

      Escreval("Digite o",i,"� n�mero:")
      Leia(ordem[i])

      LimpaTela

   fimPara

   Escreval("Gerando Resultados....")

   //Maior n�mero e menor N�mero
   Para i de 1 at� 10 fa�a

      Se i = 1 ent�o
         ordemCrescente[1] <- ordem[i]
         ordemVetor[1] <- i
         ordemCrescente[10] <- ordem[i]
         ordemVetor[10] <- i
      sen�o
         Se ordem[i] < ordemCrescente[1] ent�o
            ordemCrescente[1] <- ordem[i]
            ordemVetor[1] <- i
         fimSe
         Se ordem[i] > ordemCrescente[10] ent�o
            ordemCrescente[10] <- ordem[i]
            ordemVetor[10] <- i
         fimSe
      fimSe
      ordemCrescente[2] <- ordemCrescente[10]
      ordemCrescente[3] <- ordemCrescente[10]
      ordemCrescente[4] <- ordemCrescente[10]
      ordemCrescente[5] <- ordemCrescente[10]
      ordemCrescente[6] <- ordemCrescente[1]
      ordemCrescente[7] <- ordemCrescente[1]
      ordemCrescente[8] <- ordemCrescente[1]
      ordemCrescente[9] <- ordemCrescente[1]
   fimPara


   //Posi��o 2 e 9
   Para i de 1 at� 10 fa�a

      Se i <> ordemVetor[1] ent�o

         Se (ordem[i] <= ordemCrescente[2]) ent�o
            ordemCrescente[2] <- ordem[i]
            ordemVetor[2] <- i
         fimSe
      fimSe
      Se i <> ordemVetor[10] ent�o
         Se ordem[i] >= ordemCrescente[9] ent�o
            ordemCrescente[9] <- ordem[i]
            ordemVetor[9] <- i
         fimSe
      fimSe
   fimPara

   //Posi��o 3 e 8
   Para i de 1 at� 10 fa�a

      Se (i <> ordemVetor[1]) e (i <> ordemVetor[2]) ent�o

         Se (ordem[i] <= ordemCrescente[3]) ent�o
            ordemCrescente[3] <- ordem[i]
            ordemVetor[3] <- i
         fimSe
      fimSe
      Se (i <> ordemVetor[10]) e (i <> ordemVetor[9]) ent�o
         Se ordem[i] >= ordemCrescente[8] ent�o
            ordemCrescente[8] <- ordem[i]
            ordemVetor[8] <- i
         fimSe
      fimSe
   fimPara

   //Posi��o 4 e 7
   Para i de 1 at� 10 fa�a

      Se (i <> ordemVetor[1]) e (i <> ordemVetor[2]) e (i <> ordemVetor[3])ent�o

         Se (ordem[i] <= ordemCrescente[4]) ent�o
            ordemCrescente[4] <- ordem[i]
            ordemVetor[4] <- i
         fimSe
      fimSe
      Se (i <> ordemVetor[10]) e (i <> ordemVetor[9]) e (i <> ordemVetor[8]) ent�o
         Se ordem[i] >= ordemCrescente[7] ent�o
            ordemCrescente[7] <- ordem[i]
            ordemVetor[7] <- i
         fimSe
      fimSe
   fimPara

   //Posi��o 5 e 6
   Para i de 1 at� 10 fa�a

      Se (i <> ordemVetor[1]) e (i <> ordemVetor[2]) e (i <> ordemVetor[3]) e (i <> ordemVetor[4])ent�o

         Se (ordem[i] <= ordemCrescente[5]) ent�o
            ordemCrescente[5] <- ordem[i]
            ordemVetor[5] <- i
         fimSe
      fimSe
      Se (i <> ordemVetor[10]) e (i <> ordemVetor[9]) e (i <> ordemVetor[8]) e (i <> ordemVetor[7]) ent�o
         Se ordem[i] >= ordemCrescente[6] ent�o
            ordemCrescente[6] <- ordem[i]
            ordemVetor[6] <- i
         fimSe
      fimSe
   fimPara
   LimpaTela





   //Resultados

   Escreva("Segu�ncia Original �:")

   Para i de 1 at� 10 fa�a

      Escreva(ordem[i])
      Se (i <> 10) ent�o
         Escreva(",")
      FimSe

   FimPara

   Escreval()
   Escreva("Segu�ncia em Ordem Crescente �:")

   Para i de 1 at� 10 fa�a

      Escreva(ordemCrescente[i])
      Se (i <> 10) ent�o
         Escreva(",")
      FimSe

   fimPara



Fimalgoritmo