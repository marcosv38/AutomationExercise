*** Settings ***

Resource    resources/base.resource

Test Setup           Start new session
Test Teardown        Take Screenshot

*** Test Cases ***
Realizar registro de usuário
    Acessar página de login e cadastro
    ${usuario}=    Criar Dados De Usuario
    Preencher informações de Signup    ${usuario}[name]    ${usuario}[email]
    Preencher todas as informações para registro    ${usuario}
