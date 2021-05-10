***Settings***
Documentation           Estrutura base do código

Library                 SeleniumLibrary
Library                 String

***Variables***
${TIMEOUT}              10
${BROWSER}              chrome
${URL}                  http://automationpractice.com

***Keywords***
Start Session
    Open Browser        about:blank    ${BROWSER}      options=add_experimental_option('excludeSwitches', ['enable-logging'])
    Maximize Browser Window
    #Set Window Size     1100        860

Finish Session
    Capture Page Screenshot
    Close Browser