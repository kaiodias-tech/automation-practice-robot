***Settings***
Documentation           Página de autenticação do usuário após cadastro.

Library                 SeleniumLibrary

***Variables***
${RM_CTCOLLUM}          xpath=//*[@id="center_column"]/p
${RM_TXTINFO}           Welcome to your account. Here you can manage all of your personal information and orders.
${RM_ELEM-USER}         xpath=//*[@id="header"]/div[2]//div[1]/a/span
${RM_USER}              Kaio Dias                   

***Keywords***
Conferir se o cadastro foi efetuado com sucesso
    Wait Until Element Is Visible    ${RM_CTCOLLUM}         ${TIMEOUT}
    Element Text Should Be           ${RM_CTCOLLUM}
    ...    ${RM_TXTINFO}
    Element Text Should Be           ${RM_ELEM-USER}        ${RM_USER}