Algoritmo "REPITA_MENU"

Var
   opcao:inteiro

Inicio
   Repita
      Escreval("Escolha um Op��o:")
      Escreval("1 - Dizer Ol�!")
      Escreval("2 - Dizer Oi!")
      Escreval("0 - Sair do Programa")
      Escreval("Digite o n�mero referente a op��o escolhida")
      Leia(opcao)
      LimpaTela

      Se (opcao = 1) Entao
         Escreval("Ol�!")
         Escreval("")
      FimSe
      Se (opcao = 2) Entao
         Escreval("Oi!")
         Escreval("")
      FimSe
   Ate (opcao = 0)

   Escreval("Programa Encerrado!")
Fimalgoritmo