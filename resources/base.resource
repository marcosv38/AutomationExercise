*** Settings ***

Library    Browser
Library    JSONLibrary
Library    libs/userDataFaker.py

Resource    pages/components/navBar.resource
Resource    pages/signupLogin.resource
Resource    pages/signup.resource
Resource    pages/accountCreated.resource

*** Keywords ***
Start new session
    New Browser    browser=chromium    headless=False
    New Page    https://www.automationexercise.com/

Get JSON Fixtures
    [Arguments]    ${file_name}    ${scenario}
    
    ${data}    Load Json From File    ${EXECDIR}/resources/fixtures/${file_name}.json    encoding=utf-8
    [Return]    ${data}[${scenario}]