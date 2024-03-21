Algoritmo "CALCULADORA_SIMPLES"

Var
   resultado,valor1,valor2:real
   opcao:inteiro
Inicio

   repita
      Escreval("           Bem vindo a Calculadora!")
      Escreval("-----------------------------------------------")
      Escreval("Operações disponíveis:")
      Escreval("1 - Soma")
      Escreval("2 - Substração")
      Escreval("3 - Multiplicação")
      Escreval("4 - Divisão")
      Escreval("-----------------------------------------------")
      Escreval("Digite o número referente a operação desejada:")
      Leia(opcao)
      LimpaTela
   ate (opcao < 5) e (opcao > 0)

   Escreval("Entre o primeiro valor:")
   Leia(valor1)
   LimpaTela

   Escreval("Entre o segundo valor:")
   Leia(valor2)
   LimpaTela

   Se (opcao = 1) entao
      resultado <- valor1 + valor2
      Escreval(valor1," +",valor2," =",resultado)

   fimSe

   Se (opcao = 2) entao
      resultado <- valor1 - valor2
      Escreval(valor1," -",valor2," =",resultado)
   fimSe

   Se (opcao = 3) entao
      resultado <- valor1 * valor2
      Escreval(valor1," x",valor2," =",resultado)
   fimSe

   Se (opcao = 4) entao
      resultado <- valor1 / valor2
      Escreval(valor1," ÷",valor2," =",resultado)
   fimSe





Fimalgoritmo