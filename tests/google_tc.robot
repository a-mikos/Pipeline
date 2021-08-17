*** Settings ***
Resource          ../resource/main.resource
Resource          ../resource/BDD.robot
Test Setup        Open the Browser
Test Teardown     Close the Browser

*** Variable ***

*** Test Case ***
O que é pipeline?
    Dado    que esteja na página do google
    Quando    pesquisar o que é pipeline?
    Então    apresentar os resultados da pesquisa
