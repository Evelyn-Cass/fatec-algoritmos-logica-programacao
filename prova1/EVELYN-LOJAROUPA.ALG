Algoritmo "LOJAROUPA"

Var
   carrinho: logico
   produtosCarrinho:inteiro
   quantidadeEstoque: vetor[1..10] de inteiro
   precoEstoque:vetor[1..10] de real
   nomeEstoque:vetor[1..10] de caractere
   codigoVenda:vetor[1..10] de inteiro
   quantidadeVenda:vetor[1..10] de inteiro
   subtotalVenda:vetor[1..10] de real
   nomeCliente,telefone,formaPagamento:caractere
   codigo:inteiro
   total,totalDesconto:real
   opcao:inteiro
   i:inteiro
   pause:caractere
Inicio
   //Atribuindo os nomes e quantidades dos itens nos vetores
   nomeEstoque[1] <- "Camiseta Branca"
   quantidadeEstoque[1] <- 10
   precoEstoque[1] <- 29.90
   nomeEstoque[2] <- "Camiseta Azul"
   quantidadeEstoque[2] <- 7
   precoEstoque[2] <- 39.90
   nomeEstoque[3] <- "Camiseta Amarela"
   quantidadeEstoque[3] <- 12
   precoEstoque[3] <- 26.90
   nomeEstoque[4] <- "Camiseta Preta"
   quantidadeEstoque[4] <- 3
   precoEstoque[4] <- 19.90
   nomeEstoque[5] <- "Cal�a Jeans"
   quantidadeEstoque[5] <- 8
   precoEstoque[5] <- 59.90
   nomeEstoque[6] <- "Cal�a Pantalona"
   quantidadeEstoque[6] <- 15
   precoEstoque[6] <- 39.90
   nomeEstoque[7] <- "Vestido Rosa"
   quantidadeEstoque[7] <- 2
   precoEstoque[7] <- 109.90
   nomeEstoque[8] <- "T�nis"
   quantidadeEstoque[8] <- 6
   precoEstoque[8] <- 69.90
   nomeEstoque[9] <- "Sand�lia"
   quantidadeEstoque[9] <- 5
   precoEstoque[9] <- 26.00
   nomeEstoque[10] <- "Luvas"
   quantidadeEstoque[10] <- 0
   precoEstoque[10] <- 10.90
   produtosCarrinho <- 1

   //La�o de repeti��o para acessar as op��es de
   //dentro da aplica��o at� que ele deseje sair dela
   Repita


      Escreval("       Bem vindo � Estilos!")
      Escreval("---------------------------------")
      Escreval("1 - Ver Estoque")
      Escreval("2 - Adicionar Produto ao carrinho")
      Escreval("3 - Ver produtos no carrinho")
      Escreval("4 - Finalizar Compra")
      Escreval("0 - Encerrar")
      Escreval("---------------------------------")
      Escreval("Insira o n�mero referente a op��o desejada:")
      Leia(opcao)
      LimpaTela


      //Utilizando o Se para verificar a OP��O ESCOLHIDA
      se (opcao = 1) ent�o
         Escreval("                   Estoque:")
         Escreval("-----------------------------------------------")

         //Percorrendo os vetores para ver os itens e quantidades.
         para i de 1 at� 10 fa�a
            Escreva("C�digo:",i," - ",nomeEstoque[i]," -")
            Escreval(quantidadeEstoque[i]," unidades - R$",precoEstoque[i]:5:2)
         fimpara

         Escreval("-----------------------------------------------")
         Escreval("Aperte ENTER para continuar!")
         leia(pause)
         LimpaTela
      fimSe
      //Utilizando o Se para verificar a OP��O ESCOLHIDA
      se(opcao = 2) ent�o
         //Verificando se o carrinho et� cheio
         Se (produtosCarrinho <= 10) ent�o

            //Usando o Repita para verificar se o c�digo informado � v�lido
            Repita
               Escreval("                   Estoque:")
               Escreval("-----------------------------------------------")
               //Percorrendo os vetores para ver os itens e quantidades.
               para i de 1 at� 10 fa�a
                  Escreva("C�digo:",i," - ",nomeEstoque[i]," -")
                  Escreval(quantidadeEstoque[i]," unidades - R$",precoEstoque[i]:5:2)
               fimpara

               Escreval("-----------------------------------------------")
               Escreval("Digite o c�digo do produto desejado:")
               leia(codigoVenda[produtosCarrinho])
               LimpaTela
            at� (codigoVenda[produtosCarrinho] >= 1) e (codigoVenda[produtosCarrinho] <= 10)

            //Verificando se tem o produto desejado em estoque
            Se (quantidadeEstoque[codigoVenda[produtosCarrinho]] > 0) ent�o
               Repita
                  Escreva("Existem",quantidadeEstoque[codigoVenda[produtosCarrinho]])
                  Escreva(" unidades do produto ",nomeEstoque[codigoVenda[produtosCarrinho]])
                  Escreval(" dispon�veis.")

                  //verificando se a quantidade informada � v�lida

                  Escreval("Quantas unidades deseja adquirir?")
                  Leia(quantidadeVenda[produtosCarrinho])
                  LimpaTela
               at� (quantidadeVenda[produtosCarrinho] <= quantidadeEstoque[codigoVenda[produtosCarrinho]]) e (quantidadeVenda[produtosCarrinho] > 0)

               subtotalVenda[produtosCarrinho] <- quantidadeVenda[produtosCarrinho] * precoEstoque[codigoVenda[produtosCarrinho]]
               quantidadeEstoque[codigoVenda[produtosCarrinho]] <- quantidadeEstoque[codigoVenda[produtosCarrinho]] - quantidadeVenda[produtosCarrinho]



               Escreval("Foi adicionado ao carrinho:")
               Escreval("-------------------------------------------------")
               Escreval("Produto:",nomeEstoque[codigoVenda[produtosCarrinho]])
               Escreval("Quantidade:",quantidadeVenda[produtosCarrinho])
               Escreval("Pre�o Unit�rio: R$",precoEstoque[codigoVenda[produtosCarrinho]]:5:2)
               Escreval("Subtotal: R$",subtotalVenda[produtosCarrinho]:5:2)
               Escreval("-------------------------------------------------")
               produtosCarrinho <- produtosCarrinho + 1

               Escreval("Aperte ENTER para continuar!")
               leia(pause)
               LimpaTela

            seN�o
               Escreval("N�o possuimos unidades desse produto para venda!")
               Escreval("Aperte ENTER para continuar!")
               leia(pause)
               LimpaTela
            fimSe
         SeN�o
            Escreval("O Carrinho est� cheio!")
            Escreval("Aperte ENTER para continuar!")
            leia(pause)
            LimpaTela
         fimSe

      fimSe
      Se (opcao = 3) ent�o
         Se (produtosCarrinho = 1) ent�o
            Escreval("N�o existem produtos no carrinho")
            Escreval("Aperte ENTER para continuar!")
            leia(pause)
            LimpaTela
         sen�o
            codigo <- produtosCarrinho - 1
            Escreval("                   Carrinho:")
            Para i de 1 at� codigo fa�a
               Escreval("-------------------------------------------------")
               Escreva(i,"� - ",nomeEstoque[codigoVenda[i]]," - ")
               Escreva(quantidadeVenda[i]," unidades - R$")
               Escreval(subtotalVenda[i]:5:2)
               Escreval("-------------------------------------------------")
            fimPara
            Escreval("Aperte ENTER para continuar!")
            leia(pause)
            LimpaTela
         fimse
      fimSe

      Se (opcao = 4) ent�o

         //Verificando se existem produtos no carrinho
         Se (produtosCarrinho = 1) ent�o
            Escreval("N�o existem produtos no carrinho")
            Escreval("Aperte ENTER para continuar!")
            leia(pause)
            LimpaTela
         sen�o

            Escreval("Por favor informe seu NOME para finalizar a compra.")
            Leia(nomeCliente)
            LimpaTela

            Escreval("Por favor informe seu TELEFONE para finalizar a compra.")
            Leia(telefone)
            LimpaTela


            //Fazendo uma lista com os produtos
            codigo <- produtosCarrinho - 1
            total <- 0
            Escreval("                   Carrinho:")
            Para i de 1 at� codigo fa�a
               Escreval("-------------------------------------------------")
               Escreva(i,"� - ",nomeEstoque[codigoVenda[i]]," - ")
               Escreva(quantidadeVenda[i]," unidades - R$")
               Escreval(subtotalVenda[i]:5:2)
               Escreval("-------------------------------------------------")

               total <- total + subtotalVenda[i]
            fimPara

            Escreval("TOTAl: R$",total:5:2)
            Escreval("-------------------------------------------------")
            Escreval("Aperte ENTER para continuar!")
            leia(pause)
            LimpaTela

            //Verificando se a forma de pagamento � v�lida
            Repita
               Escreval("  Formas de pagamento: ")
               Escreval("------------------------")
               Escreval("1 - Dinheiro")
               Escreval("2 - Cart�o")
               Escreval("3 - PIX")
               Escreval("------------------------")
               Escreval("Digite o n�mero da forma desejada:")
               leia(formaPagamento)
               LimpaTela
            at� (formaPagamento > 0) e (formaPagamento <= 3)
            Escreval("                       NOTA:")
            Escreval("-------------------------------------------------")
            Escreval ("Valor TOTAL: R$",total:5:2)
            //Verificando a forma de pagamento
            Se (formaPagamento = 1) ent�o

               totalDesconto <- total * 0.9

               Escreval ("Valor TOTAL com desconto: R$",totalDesconto:5:2)
            fimSe
            produtosCarrinho <- 1
            Escreval("-------------------------------------------------")
            Escreval("Obrigado por comprar com a Estilos!")
            Escreval("Aperte ENTER para continuar!")

            leia(pause)
            LimpaTela

         fimSe

      fimSe

   at� (opcao = 0)



Fimalgoritmo