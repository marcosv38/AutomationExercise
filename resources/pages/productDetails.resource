*** Settings ***
Library    Browser

*** Keywords ***
Verificar página de detalhes de produto
    Wait For Load State    Load    10s
    Wait For Elements State    css=.product-information    visible    5s
    ${url}    Get Url
    Should Be Equal    https://www.automationexercise.com/product_details/1    ${url}
    Wait For Elements State    css=.cart    visible    5s
    Wait For Elements State    css=.product-information>h2    visible    5s
    Wait For Elements State    css=#quantity    visible    5s