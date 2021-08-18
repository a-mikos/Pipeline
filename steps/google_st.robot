*** Settings ***
Resource          ../resource/main.resource
Library           SeleniumLibrary

*** Variable ***

*** Keywords ***
que esteja na página do google
    Go To    ${URLgoogle}
    Wait Until Element Is Visible    //input[@type='text']

pesquisar o que é pipeline?
    Input Text    //input[@type='text']    o que é pipeline?
    Press Keys    None    ENTER

apresentar os resultados da pesquisa
    Wait Until Element Is Visible        (//h3[contains(.,'O que é pipeline?')])
