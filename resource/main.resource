*** Settings ***
Library           SeleniumLibrary
# Arquivos resource
Resource          BDD.robot
# Arquivos steps
Resource          ../steps/google_st.robot

*** Variables ***
${OPTIONS}        add_argument("--disable-dev-shm-usage"); add_argument("--headless"); add_argument("--no-sandbox")
${BROWSER}        Chrome
${URLgoogle}      https://www.google.com/

*** Keywords ***
Open the Browser
    Open Browser    about:blank    ${BROWSER}    options=${OPTIONS}
    Maximize Browser Window

Close the Browser
    Close Browser
