Algoritmo "AGENCIA_BANCARIA"

Var
   i:                       inteiro
   codigoCliente:           inteiro
   tipoConta:               inteiro
   valorInvestido:          real
   rendimento:              real
   totalJuros:              real

Inicio

   i <- 1
   totalJuros <- 0
   Enquanto  (i = 1)  Faca

      Escreval("C�digo do Cliente:")
      Leia(codigoCliente)

      LimpaTela
      Escreval ("Valor do investimento:")
      Leia (valorInvestido)

      tipoConta <- 0

      Enquanto (tipoConta < 1) Ou (tipoConta >3) Faca
         LimpaTela
         Escreval("Tipos de conta:")
         Escreval("1 - Poupan�a")
         Escreval("2 - Poupan�a Plus")
         Escreval("3 - Fundos de Renda")
         Escreval("Digite o n�mero referente a op��o escolhida:")
         Leia (tipoConta)
      FimEnquanto

      Se (tipoConta = 1) Entao
         rendimento <- valorInvestido * 0.015
      FimSe
      Se (tipoConta = 2) Entao
         rendimento <- valorInvestido * 0.02
      FimSe
      Se (tipoConta = 3) Entao
         rendimento <- valorInvestido * 0.04
      FimSe
      totalJuros <- totalJuros + rendimento

      LimpaTela
      Escreval("           RESULTADOS:")
      Escreval("----------------------------------")
      Escreval("C�digo do Cliente:",codigoCliente)
      Escreval("Tipo de Conta:",tipoConta)
      Escreval("Valor investido: R$",valorInvestido:5:2)
      Escreval("Rendimento Mensal: R$",rendimento:5:2)
      Escreval("----------------------------------")
      Escreval("")

      Escreval("Deseja consultar outro investimento?")
      Escreval("1 - SIM")
      Escreval("2 - N�O")
      Escreval("Digite o n�mero referente a op��o escolhida:")
      Leia(i)

   FimEnquanto

   LimpaTela
   Escreval("Total de Juros pagos foi: R$",totalJuros:5:2)
   Escreval("Programa Encerrado!")

Fimalgoritmo