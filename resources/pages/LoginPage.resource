*** Settings ***
Documentation   Elementos e ações da página de login

Library     Browser

Resource    ../env.resource

*** Keywords ***
Submit login form
    [Arguments]    ${user}

    Fill Text   css=input[placeholder$=mail]    ${user}[email]
    Fill Text   css=input[placeholder=Senha]    ${user}[password]

    Click       id=buttonLogin 
    #           xpath=//button[text()="Entrar"]
    #           css=button >> text=Entrar
