*** Settings ***
Documentation        Elementos e ações da página de cadastro

Library              Browser

Resource             ../env.resource

*** Keywords ***
Go to signup page
    Go To        ${BASE_URL}/signup
    
    #Checkpoint
    Wait For Elements State    css=h1       visible      5
    Get Text                   css=h1       equal       Faça seu cadastro
    #                          xpath=//h1[text()=”Faça seu cadastro”]
Submit signup form
    [Arguments]        ${user}

    Fill Text        id=name        ${user}[name]
    #                css=#name
    Fill Text        id=email       ${user}[email]
    #                css=#email
    Fill Text        id=password    ${user}[password]
    #                css=#password
    #                xpath=//input[@id="password"]

    Click        id=buttonSignup
    #            css=button[type=submit]
    #            xpath=//button[text()="Cadastrar"]