*** Settings ***
Documentation        Cenários de testes do cadastro de login

Library              Collections
Resource             ../resources/base.resource

Test Setup           Start Session
Test Teardown        Take Screenshot

*** Test Cases ***
Deve poder logar com um usuário pré-cadastrado
    ${user}    Create Dictionary        
    ...        name=Ana Rosa
    ...        email=ana@gmail.com
    ...        password=pwd123

    Remove user from database    ${user}[email]
    Insert user to database      ${user}

    Submit login form           ${user}
    User should be logged in    ${user}[name]

Não deve logar com senha inválida
    ${user}    Create Dictionary        
    ...        name=Liz Webber
    ...        email=liz@gmail.com
    ...        password=123456

    Remove user from database    ${user}[email]
    Insert user to database      ${user}

    Set To Dictionary    ${user}    password=abc123

    Submit login form   ${user}
    Notice should be    Ocorreu um erro ao fazer login, verifique suas credenciais.