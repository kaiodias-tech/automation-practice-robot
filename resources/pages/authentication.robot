***Settings***
Documentation           Pagina para autenticar um novo usuário.


Library                 SeleniumLibrary

***Variables***
${AUTH_SIGN_IN}         xpath=//*[@id="header"]//*[@class="login"][contains(text(),"Sign in")]
${AUTH_EMAIL}           id=email_create
${AUTH_BTN_CREATE}      id=SubmitCreate

***Keywords***
Clicar em "Sign in"
    Click Element                   ${AUTH_SIGN_IN}

Informar um e-mail válido
    Wait Until Element Is Visible   ${AUTH_EMAIL}
    ${EMAIL}                        Generate Random String
    Input Text                      ${AUTH_EMAIL}    ${EMAIL}@robotfw.com

Clicar em "Create an account"
    Click Button                    ${AUTH_BTN_CREATE}