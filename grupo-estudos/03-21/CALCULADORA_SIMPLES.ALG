Algoritmo "CALCULADORA_SIMPLES"

Var
   resultado,valor1,valor2:real
   pausar:caractere
   opcao:inteiro

Inicio
   repita
      repita
         Escreval("           Bem vindo a Calculadora!")
         Escreval("-----------------------------------------------")
         Escreval("Opera��es dispon�veis:")
         Escreval("1 - Soma")
         Escreval("2 - Substra��o")
         Escreval("3 - Multiplica��o")
         Escreval("4 - Divis�o")
         Escreval("0 - Sair")
         Escreval("-----------------------------------------------")
         Escreval("Digite o n�mero referente a opera��o desejada:")
         Leia(opcao)
         LimpaTela
      ate (opcao < 5) e (opcao >= 0)

      Se (opcao <> 0) entao
         Escreval("Entre o primeiro valor:")
         Leia(valor1)
         LimpaTela

         Escreval("Entre o segundo valor:")
         Leia(valor2)
         LimpaTela

         Se (opcao = 1) entao
            resultado <- valor1 + valor2
            Escreval(valor1," +",valor2," =",resultado:5:2)
            Escreval("Envie uma tecla para continuar")
            Leia(pausar)
            LimpaTela

         fimSe

         Se (opcao = 2) entao
            resultado <- valor1 - valor2
            Escreval(valor1," -",valor2," =",resultado:5:2)
            Escreval("Envie uma tecla para continuar")
            Leia(pausar)
            LimpaTela
         fimSe

         Se (opcao = 3) entao
            resultado <- valor1 * valor2
            Escreval(valor1," x",valor2," =",resultado:5:2)
            Escreval("Envie uma tecla para continuar")
            Leia(pausar)
            LimpaTela
         fimSe

         Se (opcao = 4) entao
            resultado <- valor1 / valor2
            Escreval(valor1," �",valor2," =",resultado:5:2)
            Escreval("Envie uma tecla para continuar")
            Leia(pausar)
            LimpaTela
         fimSe

      fimSe
   ate (opcao = 0)

   Escreval("Calculadora Encerrada")




Fimalgoritmo