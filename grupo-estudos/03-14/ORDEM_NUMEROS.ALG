Algoritmo "ORDEM_NUMEROS"

Var
   numero1,numero2:inteiro
   i:logico

Inicio

   i <- verdadeiro

   Enquanto (i = verdadeiro) faca
      numero1 <-0
      numero2 <-0

      Escreval("Digite o primeiro n�mero:")
      Leia(numero1)
      LimpaTela


      Escreval("Digite o segundo n�mero:")
      Leia(numero2)
      LimpaTela

      Se (numero1 = numero2) entao
         Escreval("Os n�meros s�o identicos!")
         i <- Falso
      FimSe
      Se (numero1 > numero2) entao
         Escreval("Ordem Decrescente!")
      FimSe
      Se (numero1 < numero2) entao
         Escreval("Ordem Crescente!")
      FimSe

      Escreval("")

   FimEnquanto

   Escreval("Programa Finalizado!")


Fimalgoritmo