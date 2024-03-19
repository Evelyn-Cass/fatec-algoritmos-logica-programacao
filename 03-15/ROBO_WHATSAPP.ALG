Algoritmo "ROBO_WHATSAPP"

Var
   opcao:inteiro
   pause:inteiro
   produto:inteiro
   quantidade:inteiro
   confirmacao:caractere
   valorToral:real

   //10% acompanhar pedido, formas de pagamento, valor total

Inicio
   opcao <- 0
   pause <- 0
   produto <- 0
   quantidade <- 0
   confirmacao <- "N"

   Repita

      Escreval("  Bem vindo a Lanchonete!")
      Escreval("---------------------------")
      Escreval("Selecione um opção:")
      Escreval("1 - Cardápio")
      Escreval("2 - Novo Pedido")
      Escreval("3 - Formas de Pagamento")
      Escreval("4 - Acompanhar Pedido")
      Escreval("0 - Sair do Programa")
      Escreval("---------------------------")
      Leia(opcao)
      LimpaTela

      Se (opcao = 1) Entao
         Escreval("            Cardápio:")
         Escreval("---------------------------------")
         Escreval("Pastéis:")
         Escreval("1 - Queijo Mussarela R$: 10,00")
         Escreval("2 - Queijo Coalho R$: 12,00")
         Escreval("3 - Queijo e Presunto R$: 13,90")
         Escreval("4 - Bancon R$: 15,00")
         Escreval("5 - Camarão R$: 20,00")
         Escreval("---------------------------------")
         Escreval("Coxinhas:")
         Escreval("6 - Queijo Mussarela R$: 6,00")
         Escreval("7 - Frango R$: 6,00")
         Escreval("8 - Costela de porco R$: 8,00")
         Escreval("9 - Bancon com Queijo R$: 7,00")
         Escreval("10 - Camarão R$: 10,00")
         Escreval("---------------------------------")
         Escreval("Envie uma tecla para continuar")
         Leia(pause)
         LimpaTela
      FimSe
      Se (opcao=2) Entao
         Escreval("            Cardápio:")
         Escreval("---------------------------------")
         Escreval("Pastéis:")
         Escreval("1 - Queijo Mussarela R$: 10,00")
         Escreval("2 - Queijo Coalho R$: 12,00")
         Escreval("3 - Queijo e Presunto R$: 13,90")
         Escreval("4 - Bancon R$: 15,00")
         Escreval("5 - Camarão R$: 20,00")
         Escreval("---------------------------------")
         Escreval("Coxinhas:")
         Escreval("6 - Queijo Mussarela R$: 6,00")
         Escreval("7 - Frango R$: 6,00")
         Escreval("8 - Costela de porco R$: 8,00")
         Escreval("9 - Bancon com Queijo R$: 7,00")
         Escreval("10 - Camarão R$: 10,00")
         Escreval("---------------------------------")


         Enquanto (produto<1) ou (produto>10) faca
            Escreval("Digite o número referente ao produto desejado:")
            Leia(produto)
         fimEnquanto

         Escreval("Quantidade:")
         Leia(quantidade)

         Escreval("Você deseja adquirir:")
         Escreval(quantidade," unidades do produto",produto)
         Escreval("S/N")
         Leia(confirmacao)

         Se (confirmacao = "S") Entao

            Se (produto = 1) Entao
               valorTotal <- quantidade * 10
            FimSe
            Se (produto = 2) Entao
               valorTotal <- quantidade * 12
            FimSe
            Se (produto = 3) Entao
               valorTotal <- quantidade * 13.9
            FimSe
            Se (produto = 4) Entao
               valorTotal <- quantidade * 15
            FimSe
            Se (produto = 5) Entao
               valorTotal <- quantidade * 20
            FimSe
            Se (produto = 6) Entao
               valorTotal <- quantidade * 6
            FimSe
            Se (produto = 7) Entao
               valorTotal <- quantidade * 6
            FimSe
            Se (produto = 8) Entao
               valorTotal <- quantidade * 8
            FimSe
            Se (produto = 9) Entao
               valorTotal <- quantidade * 7
            FimSe
            Se (produto = 10) Entao
               valorTotal <- quantidade * 10
            FimSe

               //valor total, forma de entrega, taxa
         Senao
            Escreval("Compra Cancelada")
         FimSe
      FimSe


   Ate (opcao = 0)

   Escreval("Programa Encerrado!")
   Escreval("")

Fimalgoritmo