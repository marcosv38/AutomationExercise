*** Settings ***

Library    Browser

*** Keywords ***
Preencher todas as informações para registro
    [Arguments]    ${user}
    Click        id=${user}[gender]
    Fill Text    [data-qa="password"]          ${user}[password]
    Select Options By    id=days    index      ${user}[dayBirth]
    Select Options By    id=months    index    ${user}[monthBirth]
    Select Options By    id=years    index     ${user}[yearBirth]
    Check Checkbox       id=optin
    Fill Text    [data-qa="first_name"]       ${user}[firstName]
    Fill Text    [data-qa="last_name"]        ${user}[lastName]
    Fill Text    [data-qa="company"]          ${user}[company]
    Fill Text    [data-qa="address"]          ${user}[address]
    Select Options By    id=country    label    ${user}[country]
    Fill Text    [data-qa="state"]            ${user}[state]
    Fill Text    [data-qa="city"]             ${user}[city]
    Fill Text    [data-qa="zipcode"]          ${user}[zipCode]
    Fill Text    [data-qa="mobile_number"]    ${user}[mobileNumber]
    Click        [data-qa="create-account"]