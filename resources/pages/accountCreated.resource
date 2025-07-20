*** Settings ***

Library    Browser

*** Keywords ***
Validando cadastro
    Get Text    [data-qa="account-created"]    contains    ACCOUNT CREATED!
    Get Text    [data-qa="account-created"] + p    contains    successfully created!

Seguir para a área logada
    Click    [data-qa="continue-button"]

    