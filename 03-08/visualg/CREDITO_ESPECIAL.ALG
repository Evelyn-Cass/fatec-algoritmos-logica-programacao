Algoritmo "CREDITO_ESPECIAL"

Var

   saldoMedio:real
   credito:real
   seguro:real
   idade:inteiro
   valorTotal:real

Inicio

   ESCREVAL("Qual foi o seu saldo m�dio dos �ltimos 12 meses?")
   LEIA(saldoMedio)

   ESCREVAL("Qual � sua idade?")
   LEIA(idade)

   LIMPATELA

   SE (saldoMedio > 600) ENTAO

      credito <- saldoMedio * 0.4

   SENAO
      SE (saldoMedio > 400) ENTAO

         credito <- saldoMedio * 0.3

      SENAO
         SE (saldoMedio > 200) ENTAO

            credito <- saldoMedio * 0.2

         SENAO

             ESCREVAL("Cr�dito: N�O CONCEDIDO")
             Fimalgoritmo

         FIMSE
      FIMSE
   FIMSE

   SE (idade >= 56)  ENTAO

      seguro <- credito * 0.15

   SENAO
      SE (idade >= 46)  ENTAO

         seguro <- credito * 0.1

      SENAO
         SE (idade >= 36)  ENTAO

            seguro <- credito * 0.15

         SENAO
            SE (idade >= 25)  ENTAO

               seguro <- credito * 0.06

            SENAO
               SE (idade >= 18)  ENTAO

                  seguro <- credito * 0.02

               SENAO
               
                  ESCREVAL("Cr�dito: N�O CONCEDIDO")
                  Fimalgoritmo

               FIMSE
            FIMSE
         FIMSE
      FIMSE
   FIMSE

   valorTotal <- seguro + credito

   ESCREVAL("             Resultado:")
   ESCREVAL("------------------------------------")
   ESCREVAL("Idade:",idade)
   ESCREVAL("Saldo m�dio: R$",saldoMedio)
   ESCREVAL("Cr�dito: R$",credito)
   ESCREVAL("Seguro: R$",seguro)
   ESCREVAL("Valor total a pagar: R$",valorTotal)

   ESCREVAL("------------------------------------")

Fimalgoritmo