*** Settings ***

Library    Browser

*** Keywords ***
Acessar página de login e cadastro
    Click    xpath=//a[text()=" Signup / Login"]

Validando área logada
    Get Text    xpath=//a[text()=" Logout"]    contains    Logout

Deslogar
    Click    xpath=//a[text()=" Logout"]

Ir para página de contato
    Click    //a[@href="/contact_us"]

Ir para página de produtos
    Click    //a[@href="/products"]