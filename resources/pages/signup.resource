*** Settings ***

Library    Browser

*** Keywords ***
Preencher todas as informações para registro
    [Arguments]    ${user}
    Click        id=${user}[gender]
    Fill Text    [data-qa="password"]          ${user}[password]
    Select Options By    id=days    value      ${user}[dayBirth]
    Select Options By    id=months    value    ${user}[monthBirth]
    Select Options By    id=years    value     ${user}[years]
    Check Checkbox       id=optin
    Fill Text    [data-qa="first_name"]       ${user}[first_name]
    Fill Text    [data-qa="last_name"]        ${user}[last_name]
    Fill Text    [data-qa="company"]          ${user}[company]
    Fill Text    [data-qa="address"]          ${user}[address]
    Select Options By    id=country    value    ${user}[country]
    Fill Text    [data-qa="state"]            ${user}[state]
    Fill Text    [data-qa="city"]             ${user}[city]
    Fill Text    [data-qa="zipcode"]          ${user}[zipcode]
    Fill Text    [data-qa="mobile_number"]    ${user}[mobile_number]
    Click        [data-qa="create-account"]