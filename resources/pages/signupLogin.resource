*** Settings ***

Library    Browser

*** Keywords ***
Preencher informações de Signup
    [Arguments]    ${name}    ${email}
    Fill Text    [data-qa="signup-name"]    ${name}    
    Fill Text    [data-qa="signup-email"]    ${email}
    Click    [data-qa="signup-button"]