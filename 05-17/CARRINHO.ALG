Algoritmo "CARRINHO"

Tipo Produto = registro
   nome : caractere
   quantidade: inteiro
   valorUnitario, valorTotal: real
   ocupado: logico
fimRegistro

Var
   itens: vetor[1..10] de Produto
   posicaoCarrinho, quantidadeCarrinho: inteiro
   carrinhoCheio: logico
   pause:caractere
   opcao, opcaoModifica, codigo, i,confirmacao:inteiro



Procedimento exibirCarrinho
Inicio
   quantidadeCarrinho <- 0
   Para i de 1 at� 10 fa�a
      Se (itens[i].ocupado = verdadeiro) ent�o
         quantidadeCarrinho <- quantidadeCarrinho + 1
      fimSe
   fimPara

   Se (quantidadeCarrinho = 0) ent�o
      Escreval("O carrinho est� vazio!")
      Escreval("------------------------------")

   seN�o



      Escreval("             Produtos no carrinho:")
      Escreval("------------------------------------------------")
      Para i de 1 at� 10 fa�a

         Se(itens[i].ocupado = verdadeiro) ent�o

            Escreval("C�digo: ",i)
            Escreval("Nome: ",itens[i].nome)
            Escreval("Quantidade: ",itens[i].quantidade)
            Escreval("Valor Unit�rio: R$",itens[i].valorUnitario:5:2)
            Escreval("Subtotal: R$",itens[i].valorTotal:5:2)
            Escreval("------------------------------------------------")



         fimSe
      fimPara
   fimSe
FimProcedimento

Procedimento modificarItem
inicio
   Escreval("                Item Modificado")
   Escreval("------------------------------------------------")
   Escreval("C�digo: ",codigo)
   Escreval("Nome: ",itens[codigo].nome)
   Escreval("Quantidade: ",itens[codigo].quantidade)
   Escreval("Valor Unit�rio: R$",itens[codigo].valorUnitario:5:2)
   Escreval("Subtotal: R$",itens[codigo].valorTotal:5:2)
   Escreval("------------------------------------------------")
   Escreval("Pressione ENTER para Continuar")
   Leia(pause)
   LimpaTela
FimProcedimento

Inicio




   Repita

      Repita
         Escreval("Bem vindo a seu Carrinho de compra digital!")
         Escreval("-------------------------------------------")
         Escreval("1 - Ver Carrinho")
         Escreval("2 - Adicionar item")
         Escreval("3 - Modificar item")
         Escreval("0 - Encerrar Aplica��o")
         Escreval("-------------------------------------------")
         Escreval("Envie o n�mero referente a op��o desejada:")
         Leia(opcao)
         LimpaTela
      at� (opcao >= 0) e (opcao <=3)

      se (opcao = 1) ent�o
         exibirCarrinho
         Escreval("Pressione ENTER para Continuar")
         Leia(pause)
         LimpaTela
      fimSe  //fim Opcao 1

      se (opcao = 2) ent�o

         //adicionar item

         quantidadeCarrinho <- 0
         carrinhoCheio <- verdadeiro

         Para i de 1 at� 10 fa�a
            Se (itens[i].ocupado = falso) ent�o
               carrinhoCheio <- falso
               posicaoCarrinho <- i
               interrompa
            fimSe
         fimPara

         Se (carrinhoCheio = verdadeiro) ent�o

            Escreval("O carrinho est� cheio!")
            Escreval("------------------------------")
            Escreval("Pressione ENTER para Continuar")
            Leia(pause)
            LimpaTela

         seNao

            Escreval("Digite o nome do produto:")
            Leia(itens[posicaoCarrinho].nome)
            LimpaTela

            Repita
               Escreval("Digite a quantidade de ",itens.nome[posicaoCarrinho],":")
               Leia(itens[posicaoCarrinho].quantidade)
               LimpaTela
               Se (itens[posicaoCarrinho].quantidade <= 0) ent�o
                  Escreval("A quantidade deve ser maior que ZERO")
               fimSe
            at� (itens[posicaoCarrinho].quantidade > 0)

            Repita
               Escreval("Digite o valor unit�rio de ",itens.nome[posicaoCarrinho],":")
               Leia(itens[posicaoCarrinho].valorUnitario)
               LimpaTela
               Se (itens[posicaoCarrinho].valorUnitario <= 0) ent�o
                  Escreval("O valor unit�rio deve ser maior que ZERO")
               fimSe
            at� (itens[posicaoCarrinho].valorUnitario > 0)

            itens[posicaoCarrinho].valorTotal <- itens[posicaoCarrinho].valorUnitario * itens[posicaoCarrinho].quantidade
            itens[i].ocupado <- verdadeiro

            Escreval("          Item adicionado ao Carrinho")
            Escreval("------------------------------------------------")
            Escreval("C�digo: ",posicaoCarrinho)
            Escreval("Nome: ",itens[posicaoCarrinho].nome)
            Escreval("Quantidade: ",itens[posicaoCarrinho].quantidade)
            Escreval("Valor Unit�rio: R$",itens[posicaoCarrinho].valorUnitario:5:2)
            Escreval("Subtotal: R$",itens[posicaoCarrinho].valorTotal:5:2)
            Escreval("------------------------------------------------")
            Escreval("Pressione ENTER para Continuar")
            Leia(pause)
            LimpaTela

         fimSe

      fimSe //fim OPCAO 2

      se (opcao = 3) ent�o


         exibirCarrinho

         Se (quantidadeCarrinho = 0) ent�o

            Escreval("Pressione ENTER para Continuar")
            Leia(pause)
            LimpaTela

         seN�o
            Repita
               Escreval("Envie o c�digo do produto desejado:")
               Leia(codigo)
               LimpaTela
               Se (itens[codigo].ocupado = falso) ent�o

                  exibirCarrinho
               fimSe
            at� (itens[codigo].ocupado = verdadeiro)

            Repita
               Escreval("Modifica��es dispon�veis")
               Escreval("------------------------")
               Escreval("1 - Nome")
               Escreval("2 - Quantidade")
               Escreval("3 - Valor Unit�rio")
               Escreval("4 - Remover")
               Escreval("0 - Cancelar")
               Escreval("------------------------")
               Escreval("Envie o n�mero referente a op��o desejada")
               Leia(opcaoModifica)
               LimpaTela
            at� (opcaoModifica >= 0) e (opcaoModifica <= 4)

            Se (opcaoModifica = 1) ent�o

               Escreval("Digite o novo nome do produto:")
               Leia(itens[codigo].nome)
               LimpaTela

               modificarItem

            fimSe //opcaoModifica 1

            Se (opcaoModifica = 2) ent�o

               Repita
                  Escreval("Digite a nova quantidade de ",itens[codigo].nome,":")
                  Leia(itens[codigo].quantidade)
                  LimpaTela
                  Se (itens[codigo].quantidade <= 0) ent�o
                     Escreval("A quantidade deve ser maior que ZERO")
                  fimSe
               at� (itens[codigo].quantidade > 0)

               itens[codigo].valorTotal <- itens[codigo].valorUnitario * itens[codigo].quantidade

               modificarItem

            fimSe //opcaoModifica 2

            Se (opcaoModifica = 3) ent�o

               Repita
                  Escreval("Digite o novo valor unit�rio de ",itens[codigo].nome,":")
                  Leia(itens[codigo].valorUnitario)
                  LimpaTela
                  Se (itens[codigo].valorUnitario <= 0) ent�o
                     Escreval("O valor unit�rio deve ser maior que ZERO")
                  fimSe
               at� (itens[codigo].valorUnitario > 0)

               itens[codigo].valorTotal <- itens[codigo].valorUnitario * itens[codigo].quantidade

               modificarItem

            fimSe //opcaoModifica 3

            Se (opcaoModifica = 4) ent�o


               repita
                  Escreval("                      Op��es")
                  Escreval("--------------------------------------------------")
                  Escreval("1 - Sim")
                  Escreval("2 - N�o")
                  Escreval("--------------------------------------------------")
                  Escreval("Tem certeza que deseja apagar o item: ",itens[codigo].nome," ?")
                  Leia(confirmacao)
                  LimpaTela
               at� (confirmacao = 1) ou (confirmacao = 2)

               Se (confirmacao = 1) ent�o

                  itens[codigo].ocupado <- falso

                  Escreval(itens[codigo].nome," removido com sucesso!")
                  Escreval("Pressione ENTER para Continuar")
                  Leia(pause)
                  LimpaTela

               seN�o

                  Escreval("Remo��o Cancelada!")
                  Escreval("Pressione ENTER para Continuar")
                  Leia(pause)
                  LimpaTela
               fimSe //opcaoModifica 4

            fimSe

         fimSe

      fimSe //Fim opcao 3

   at� (opcao = 0)






Fimalgoritmo