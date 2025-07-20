*** Settings ***

Resource    resources/base.resource

Test Setup           Start new session
Test Teardown        Take Screenshot

*** Variables ***



*** Test Cases ***
Realizar registro de usuário
    [Tags]    cadastro
    Acessar página de login e cadastro
    ${usuario}=    Criar Dados De Usuario
    Preencher informações de Signup    ${usuario}[name]    ${usuario}[email]
    Preencher todas as informações para registro    ${usuario}
    Validando cadastro
    Seguir para a área logada
    Validando área logada

Realizar login com dados válidos
    [Tags]    login
    Acessar página de login e cadastro
    ${userLogin}    Get JSON Fixtures    dados    login
    Preencher informações de Login    ${userLogin}[validUser][password]    ${userLogin}[validUser][email]
    Validando área logada

Realizar login com dados inválidos
    [Tags]    logininv
    Acessar página de login e cadastro
    ${userLogin}    Get JSON Fixtures    dados    login
    Preencher informações de Login    ${userLogin}[invalidUser][password]    ${userLogin}[invalidUser][email]
    Validar mensagem de dados inválidos

validar o deslogar
    [Tags]    deslogar
    Acessar página de login e cadastro
    ${userLogin}    Get JSON Fixtures    dados    login
    Preencher informações de Login    ${userLogin}[validUser][password]    ${userLogin}[validUser][email]
    Validando área logada
    Deslogar
    Validando área de login

Realizar cadastro com email já cadastrado
    [Tags]    cadastroinv
    Acessar página de login e cadastro
    ${userLogin}    Get JSON Fixtures    dados    login
    Preencher informações de Signup    ${userLogin}[validUser][name]    ${userLogin}[validUser][email]
    Validar mensagem de email incorreto

