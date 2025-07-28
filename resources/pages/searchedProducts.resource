*** Settings ***
Library    Browser

*** Keywords ***
Verificar página de Searched Products
    [Arguments]    ${podutoPesquisado}
    Wait For Elements State    xpath=//h2[text()="Searched Products"]    visible    5s
    Get Text    xpath=//h2[text()="Searched Products"]    equal    SEARCHED PRODUCTS
    Wait For Elements State    css=.product-image-wrapper:nth-of-type(1)    visible    5s
    Wait For Elements State    xpath=//p[text()="${podutoPesquisado}"]    visible    5s