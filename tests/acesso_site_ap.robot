***Settings***
Resource            ../resources/base.robot
Resource            ../resources/pages/home.robot
Resource            ../resources/pages/checkout.robot

Test Setup          Start Session
Test Teardown       Finish Session     

***Test Cases***
Realizar o checkout do produto no carrinho de compras
    home.Acessar a página home do site
    home.Digitar o nome do produto no campo de pesquisa      Blouse
    home.Clicar no botão pesquisar
    home.Clicar no botão "add to cart" para adicionar o produto
    checkout.Clicar no botão "Proceed to checkout"
    checkout.Validar o resumo da compra
