Algoritmo "URNA"

Tipo candidato = registro
   nome, partido : caractere
   numero, votos: inteiro
FimRegistro

Var

   candidatos : vetor[1..10] de candidato
   opcao, pause, i : inteiro
   nulo, branco, totalVotos, numero, confirmar : inteiro
   valido, votoRealizado : logico


Procedimento votar()
Inicio

   Repita


      confirmar <- 0
      Escreval("Deseja votar em Branco?")
      Escreval("------------------")
      Escreval("1 - Sim")
      Escreval("2 - N�o")
      Escreval("------------------")
      Escreval("Digite o n�mero referente a op��o desejada")
      Leia(confirmar)
      LimpaTela

      Se (confirmar = 1) ent�o
         branco <- branco + 1
         totalVotos <- totalVotos + 1
         votoRealizado <- verdadeiro
      sen�o

         votoRealizado <- falso
         Escreval("Digite o n�mero referente ao Candidato desejado:")
         Leia(numero)
         LimpaTela

         valido <- falso
         Para i de 1 at� 10 fa�a

            Se (candidatos[i].numero = numero) entao
               valido <- verdadeiro
               interrompa
            fimSe

         fimPara

         Se (valido = verdadeiro) ent�o

            Escreval("Deseja votar em:")
            Escreval("-------------------------------------")
            Escreval("N�mero:",numero)
            Escreval("Nome: ",candidatos[i].nome)
            Escreval("Partido:",candidatos[i].partido)
            Escreval("-------------------------------------")
            Escreval("1 - Sim")
            Escreval("2 - N�o")
            Escreval("-------------------------------------")
            Escreval("Digite o n�mero referente a op��o desejada")
            Leia(confirmar)
            LimpaTela

            Se (confirmar = 1) ent�o
               candidatos[i].votos <- candidatos[i].votos + 1
               totalVotos <- totalVotos + 1
               votoRealizado <- verdadeiro
            fimSe

         fimSe

         Se (valido = falso) ent�o

            confirmar <- 0
            Escreval("Deseja votar Nulo?")
            Escreval("------------------")
            Escreval("1 - Sim")
            Escreval("2 - N�o")
            Escreval("------------------")
            Escreval("Digite o n�mero referente a op��o desejada")
            Leia(confirmar)
            LimpaTela

            Se (confirmar = 1) ent�o
               nulo <- nulo + 1
               totalVotos <- totalVotos + 1
               votoRealizado <- verdadeiro
            fimSe

         fimSe
      fimSe
   fimSe

at� (votoRealizado = verdadeiro)

fimProcedimento

Procedimento verificarResultado()
Inicio

   Se (totalVotos > 0) ent�o


      Escreval("Total de votos:",totalVotos)
      Escreval("Votos em Branco:",branco)
      Escreval("Votos Nulos:",Nulo)
      Escreval("-------------------------------------")
      Escreval("       Votos por candidato:")
      Escreval("-------------------------------------")
      Para i de 1 at� 10 fa�a

         Escreval("N�mero:",candidatos[i].numero)
         Escreval("Nome: ",candidatos[i].nome)
         Escreval("Partido:",candidatos[i].partido)
         Escreval("Votos:",candidatos[i].votos)
         Escreval("-------------------------------------")

      fimPara
      Escreval("Pressione ENTER para continuar!")
      leia(pause)
      LimpaTela


   SeN�o

      Escreval("N�o foram computados votos!")
      Escreval("Total de votos = 0")
      Escreval("-------------------------------")
      Escreval("Pressione ENTER para continuar!")
      leia(pause)
      LimpaTela

   fimSe

fimProcedimento

Procedimento exibirCandidatos()
Inicio

   Escreval("                Candidatos:")
   Escreval("-----------------------------------------")
   Para i de 1 at� 10 fa�a

      Escreval("N�mero:",  candidatos[i].numero)
      Escreval("Nome:",candidatos[i].nome)
      Escreval("Partido:",  candidatos[i].partido)
      Escreval("-----------------------------------------")

   fimPara
   Escreval("Pressione ENTER para continuar!")
   leia(pause)
   LimpaTela

fimProcedimento


Inicio

   candidatos.nome[1] <- "Jo�o Algusto"
   candidatos.numero[1] <- 1234
   candidatos.partido[1] <- "Brasil em Jogo"
   candidatos.votos[1] <- 0


   candidatos.nome[2] <- "Maria Palia"
   candidatos.numero[2] <- 1220
   candidatos.partido[2] <- "Brasil em Jogo"
   candidatos.votos[2] <- 0


   candidatos.nome[3] <- "Renato Marcos"
   candidatos.numero[3] <- 1245
   candidatos.partido[3] <- "Brasil em Jogo"
   candidatos.votos[3] <- 0


   candidatos.nome[4] <- "Talita Amaral"
   candidatos.numero[4] <- 3190
   candidatos.partido[4] <- "Liberdade"
   candidatos.votos[4] <- 0


   candidatos.nome[5] <- "Leonardo Oliveira"
   candidatos.numero[5] <- 3165
   candidatos.partido[5] <- "Liberdade"
   candidatos.votos[5] <- 0


   candidatos.nome[6] <- "Joana Aparecida"
   candidatos.numero[6] <- 3145
   candidatos.partido[6] <- "Liberdade"
   candidatos.votos[6] <- 0


   candidatos.nome[7] <- "Tiago Paulinho"
   candidatos.numero[7] <- 1090
   candidatos.partido[7] <- "Irmandade Verde"
   candidatos.votos[7] <- 0


   candidatos.nome[8] <- "Algusto Silveira"
   candidatos.numero[8] <- 1065
   candidatos.partido[8] <- "Irmandade Verde"
   candidatos.votos[8] <- 0


   candidatos.nome[9] <- "Lucas Gimenez"
   candidatos.numero[9] <- 1077
   candidatos.partido[9] <- "Irmandade Verde"
   candidatos.votos[9] <- 0


   candidatos.nome[10] <- "Vinicius Maranh�o"
   candidatos.numero[10] <- 1011
   candidatos.partido[10] <- "Irmandade Verde"
   candidatos.votos[10] <- 0


   Repita

      Escreval("Bem vindo a Urna Elet�nica!")
      Escreval("---------------------------")
      Escreval("1 - Novo Voto")
      Escreval("2 - Verificar Resultado")
      Escreval("3 - Exibir Candidatos")
      Escreval("0 - Sair")
      Escreval("---------------------------")
      Escreval("Digite o n�mero referente a op��o desejada:")
      Leia(opcao)
      LimpaTela

      Se (opcao = 1) ent�o
         votar()
      fimSe

      Se (opcao = 2) ent�o
         verificarResultado()
      fimSe

      Se (opcao = 3) ent�o
         exibirCandidatos()
      fimSe


   at� (opcao = 0)

Fimalgoritmo