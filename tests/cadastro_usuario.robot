***Settings***
Resource            ../resources/base.robot
Resource            ../resources/pages/home.robot
Resource            ../resources/pages/authentication.robot
Resource            ../resources/pages/personal_data.robot
Resource            ../resources/pages/registration_made.robot

Test Setup          Start Session
Test Teardown       Finish Session

***Test Cases***
Criando uma conta no portal
    home.Acessar a página home do site
    authentication.Clicar em "Sign in"
    authentication.Informar um e-mail válido
    authentication.Clicar em "Create an account"
    personal_data.Preencher os dados obrigatórios
    personal_data.Submeter cadastro
    registration_made.Conferir se o cadastro foi efetuado com sucesso