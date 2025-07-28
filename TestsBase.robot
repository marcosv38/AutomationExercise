*** Settings ***

Resource    resources/base.resource

Test Setup           Start new session
Test Teardown        Take Screenshot

*** Variables ***
${pesquisa}    Stylish Dress


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

Realizar contato através do form de contato
    [Tags]    contato
    Ir para página de contato
    ${userLogin}    Get JSON Fixtures    dados    login
    Inserir dados de contato    ${userLogin}[contact][name]    ${userLogin}[contact][email]    ${userLogin}[contact][subject]    ${userLogin}[contact][message]    
    Enviar mensagem de contato
    Validar envio de contato

verificar todos os produtos e a página de detalhes do produto
    [Tags]    TodosProdutos
    Ir para página de produtos
    verificar Página de all products
    selecionar o primeiro produto
    Verificar página de detalhes de produto

Pesquisar produto
    [Tags]    PesquisarProdutos
    Ir para página de produtos
    verificar Página de all products
    Pesquisar Produto    ${pesquisa}
    Verificar página de Searched Products    ${pesquisa}