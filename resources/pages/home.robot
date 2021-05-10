***Settings***
Documentation           Página inicial do site Automation Practice.


Library                 SeleniumLibrary

***Variables***
${HOME_TOPMENU}         xpath=//*[@id="block_top_menu"]/ul
${HOME_TITLE}           My Store
${HOME_SEARCH}          css=#search_query_top
${HOME_BTN_SEARCH}      css=button[class$="button-search"]
${HOME_QUICK_VIEW}      xpath=//*[@class="quick-view-wrapper-mobile"]/..
${HOME_ADD_TO_CART}     css=a[title="Add to cart"]
${HOME_SCROLL_TO}       window.scrollTo(0,550)


***Keywords***
Acessar a página home do site
    Go To                               ${URL}
    Wait Until Element Is Visible       ${HOME_TOPMENU}         ${TIMEOUT}
    Title Should Be                     ${HOME_TITLE}

Digitar o nome do produto no campo de pesquisa
    [Arguments]                         ${produto}
    Wait Until Element Is Visible       ${HOME_SEARCH}
    Input Text                          ${HOME_SEARCH}          ${produto}

Clicar no botão pesquisar
    Click Element                       ${HOME_BTN_SEARCH}

Clicar no botão "add to cart" para adicionar o produto
    Wait Until Element Is Visible       ${HOME_QUICK_VIEW}      ${TIMEOUT}
    Execute JavaScript                  ${HOME_SCROLL_TO}

    Set Focus To Element                ${HOME_QUICK_VIEW}
    Mouse Over                          ${HOME_QUICK_VIEW}

    Wait Until Element Is Visible       ${HOME_ADD_TO_CART}     ${TIMEOUT}
    Click Element                       ${HOME_ADD_TO_CART}
