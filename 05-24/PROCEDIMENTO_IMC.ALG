Algoritmo "PROCEDIMENTO_IMC"

Var
   imc : real

Procedimento calcularIMC()
Var
   peso, altura: real
Inicio

   Escreval("Qual � sua altura?")
   Leia(altura)
   LimpaTela

   Escreval("Qual � seu peso?")
   Leia(peso)
   LimpaTela

   imc <- peso / (altura*altura)

fimProcedimento

Inicio

   calcularIMC()

   Escreval("O seu IMC � ",imc:5:2)

Fimalgoritmo