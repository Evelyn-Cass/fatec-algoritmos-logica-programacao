Algoritmo "LOGIN_TRES_TENTATIVAS"

Var

   usuario, senha:caracter
   i : inteiro

Inicio

   PARA i DE 1 ATE 3 FACA

      ESCREVAL("Usu�rio:")
      LEIA(usuario)

      ESCREVAL("Senha:")
      LEIA(senha)

      LIMPATELA

      SE (usuario = "Evelyn") E (senha="1234") ENTAO

         ESCREVAL("Usu�rio Encontrado!")
         ESCREVAL("Login realizado com sucesso!")
         INTERROMPA

      SENAO
         ESCREVAL("Usu�rio ou a senha incorreto.")
         ESCREVAL("Tentativas restantes:", i,"/3")
         ESCREVAL("")
         SE ( i = 3) ENT�O
            ESCREVAL("Voc� excedeu o n�mero m�ximo de tentativas de login.")
            ESCREVAL("Programa ser� encerrado!")
         FIMSE

      FIMSE

   FIMPARA



Fimalgoritmo