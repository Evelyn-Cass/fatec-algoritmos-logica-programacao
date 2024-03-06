Algoritmo "SALARIO_LIQUIDO"
Var
   salarioBruto,salarioLiquido:real
   inss:real
   impostoRenda:real
   salarioDescontadoInss:real
   faixa:real

Inicio

   Escreval("")
   Escreval("Digite o valor do seu salário BRUTO:")
   Leia(salarioBruto)

   Se(salarioBruto >  4000.03)entao

      inss  <- 1320 * 0.075   //Faixa 1
      inss <- inss + (1251.29 * 0.09)  //Faixa 2
      inss <- inss + (1285.65 * 0.12)  //Faixa 3
      faixa <- salarioBruto -  3856.94
      inss <- inss + (faixa * 0.14) //Faixa 4

   senao
      Se(salarioBruto > 2666.68)entao

         inss  <- 1320 * 0.075   //Faixa 1
         inss <- inss + (1251.29 * 0.09)  //Faixa 2
         faixa <- salarioBruto - 2571.29
         inss <- inss + (faixa * 0.12) //Faixa 3

      senao
         Se(salarioBruto > 1412)entao

            inss  <- 1320 * 0.075    //Faixa 1
            faixa  <- salarioBruto - 1320
            inss <- inss + (faixa * 0.09) //Faixa 2
            
         senao

            inss <- salarioBruto * 0.075

         fimse
      fimse
   fimse

   salarioDescontadoInss <- salarioBruto - inss

   Se (salarioDescontadoInss < 2112)entao
      impostoRenda <- 0
   senao
      Se (salarioDescontadoInss < 2826.65)entao
         impostoRenda <- salarioDescontadoInss * 0.075 - 158.40
      senao
         Se (salarioDescontadoInss < 3751.05)entao
            impostoRenda <- salarioDescontadoInss * 0.15 - 370.40
         senao
            Se (salarioDescontadoInss < 4664.68)entao
               impostoRenda <- salarioDescontadoInss * 0.225 - 651.73
            senao
               Se (salarioDescontadoInss > 4664.68)entao
                  impostoRenda <- salarioDescontadoInss * 0.275 - 884.96
               fimse
            fimse
         fimse
      fimse
   fimse

   salarioLiquido <- salarioDescontadoInss - impostoRenda

   Escreval("                 RESULTADO:")
   Escreval("---------------------------------------------")
   Escreval("Salário BRUTO: R$",salarioBruto)
   Escreval("INSS: R$",inss)
   Escreval("Imposto de Renda: R$",impostoRenda)
   Escreval("Salário Líquido: R$",salarioLiquido)
   Escreval("---------------------------------------------")

Fimalgoritmo