Algoritmo "FUNCAO_IMC"

Var

Funcao calcularIMC() : real
Var
   peso, altura : real
Inicio
   Escreval("Qual � sua altura?")
   Leia(altura)
   LimpaTela


   Escreval("Qual � seu peso?")
   Leia(peso)
   LimpaTela

   Retorne peso / (altura * altura)

fimFuncao


Inicio

   Escreval("Seu IMC � ",calcularIMC():2:2)

Fimalgoritmo