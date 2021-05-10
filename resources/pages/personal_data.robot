***Settings***
Documentation               Página solicitando dados pessoais para 
...                         autenticação do usuário.

Library                     SeleniumLibrary
Library                     String

***Variables***
${PD_TXT_INFO}              xpath=//*[@id="account-creation_form"]//h3[contains(text(),"Your personal information")]
${PD_GENERO}                id=id_gender1
${PD_FTNAME}                id=customer_firstname
${PD_NAME}                  Kaio
${PD_LASTNAME}              id=customer_lastname
${PD_LTNAME}                Dias
${PD_IDPASS}                id=passwd
${PD_PASS}                  123456
${PD_IDADDRESS}             id=address1
${PD_ADDRESS}               Rua dos Bugs, Robot é toop
${PD_IDCITY}                id=city
${PD_CITY}                  São Paulo
${PD_IDSTATE}               id=id_state
${PD_STATE}                 10
${PD_IDCODE}                id=postcode
${PD_CODE}                  20620
${PD_IDMOBILE}              id=phone_mobile
${PD_MOBILE}                88887777
${PD_BTN_ACCOUNT}           submitAccount

***Keywords***
Preencher os dados obrigatórios
    Wait Until Element Is Visible   ${PD_TXT_INFO}
    Click Element                   ${PD_GENERO}
    Input Text                      ${PD_FTNAME}        ${PD_NAME}
    Input Text                      ${PD_LASTNAME}      ${PD_LTNAME}
    Input Text                      ${PD_IDPASS}        ${PD_PASS}
    Input Text                      ${PD_IDADDRESS}     ${PD_ADDRESS}
    Input Text                      ${PD_IDCITY}        ${PD_CITY}
    Set Focus To Element            ${PD_IDSTATE}
    ### No firefox ocorreu problema ao achar o listbox State, então foi necessário implementar um if para esperar
    ### pelo elemento quando for o Browser firefox
    Run Keyword If    '${BROWSER}'=='firefox'  Wait Until Element Is Visible    ${PD_IDSTATE}
    Select From List By Index       ${PD_IDSTATE}       ${PD_STATE}
    Input Text                      ${PD_IDCODE}        ${PD_CODE}
    Input Text                      ${PD_IDMOBILE}      ${PD_MOBILE}

Submeter cadastro
    Click Button                    ${PD_BTN_ACCOUNT}