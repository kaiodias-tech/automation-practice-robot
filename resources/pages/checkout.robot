***Settings***
Documentation           Página de resumo da compra.


Library                 SeleniumLibrary

***Variables***
${CHECK_CHECKOUT}       css=a[title="Proceed to checkout"]
${CHECK_SUMMARY}        Shopping-cart summary
${CHECK_PRODUTO}        xpath=//*[@class="cart_description item"]/../../..//*[contains(text(), "Blouse")]/../../../..
${CHECK_PREÇO}          xpath=//*[@id="total_price"]
${CHECK_VALOR}          $29.00

***Keywords***
Clicar no botão "Proceed to checkout"
    Wait Until Element Is Visible       ${CHECK_CHECKOUT}       ${TIMEOUT}
    Click Element                       ${CHECK_CHECKOUT}

Validar o resumo da compra
    Wait Until Page Contains            ${CHECK_SUMMARY}

    #Validando Produto e o valor
    Wait Until Element Is Visible       ${CHECK_PRODUTO}        ${TIMEOUT}
    Element Text Should Be              ${CHECK_PREÇO}          ${CHECK_VALOR}
