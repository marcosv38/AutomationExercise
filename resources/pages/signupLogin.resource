*** Settings ***

Library    Browser

*** Keywords ***
Preencher informações de Signup
    [Arguments]    ${name}    ${email}
    Fill Text    [data-qa="signup-name"]    ${name}    
    Fill Text    [data-qa="signup-email"]    ${email}
    Click    [data-qa="signup-button"]

Preencher informações de Login
    [Arguments]    ${password}    ${email}
    Fill Text    [data-qa="login-password"]    ${password}    
    Fill Text    [data-qa="login-email"]    ${email}
    Click    [data-qa="login-button"]

Validar mensagem de dados inválidos
    Get Text    //form[@action="/login"]//p    equal    Your email or password is incorrect!

Validando área de login
    ${url}=     Get Url
    Should Be Equal    ${url}    https://www.automationexercise.com/login
    Wait For Elements State    xpath=//div[contains(@class, "login-form")]//h2    visible
    Get Text    //div[contains(@class, "login-form")]//h2    equal    Login to your account

Validar mensagem de email incorreto
    Wait For Elements State    xpath=//form[@action="/signup"]//p    visible
    Get Text    //form[@action="/signup"]//p    equal    Email Address already exist!