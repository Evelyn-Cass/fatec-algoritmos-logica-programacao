Algoritmo "IMC"

Var
   altura,peso,resultado:real

Inicio
   Escreval("Bem vindo a calculadora de IMC" )
   Escreval("Digite a sua altura em metros:" )
   Leia (altura)
   LimpaTela

   Escreval("Digite a seu peso em quilos:" )
   Leia (peso)
   LimpaTela

   resultado <- peso / (altura*altura)

   Escreval("O valor do seu IMC �:",resultado,".")

   Se(resultado<16)Entao
      Escreval("Voc� foi classificado como: Magreza grave.")
   Senao
      Se(resultado<16.9)Entao
         Escreval("Voc� foi classificado como: Magreza moderada.")
      Senao
         Se(resultado<18.5)Entao
            Escreval("Voc� foi classificado como: Magreza leve.")
         Senao
            Se(resultado<24.9)Entao
               Escreval("Voc� foi classificado como: Peso ideal.")
            Senao
               Se(resultado<29.9)Entao
                  Escreval("Voc� foi classificado como: Sobrepeso.")
               Senao
                  Se(resultado<34.9)Entao
                     Escreval("Voc� foi classificado como: Obesidade Grau I.")
                  Senao
                     Se(resultado<39.9)Entao
                        Escreval("Voc� foi classificado como: Obesidade Grau II ou Severa.")
                     Senao
                        Se(resultado<40)Entao
                           Escreval("Voc� foi classificado como: Obesidade Grau III ou M�rbida.")
                        Senao
                           Escreval("Valor n�o encontrado!")
                        FimSe
                     FimSe
                  FimSe
               FimSe
            FimSe
         FimSe
      FimSe
   FimSe





Fimalgoritmo