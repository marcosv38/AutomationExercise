*** Settings ***
Library    Browser

*** Keywords ***
verificar Página de all products  
    Wait For Elements State    css=.features_items    visible    timeout=5s
    ${url}=     Get Url
    Should Be Equal    ${url}   https://www.automationexercise.com/products
    Get Text    xpath=//h2[text()="All Products"]    equal    ALL PRODUCTS

selecionar o primeiro produto
    Click    xpath=//a[@href="/product_details/1"]