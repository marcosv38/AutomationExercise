*** Settings ***

Library    Browser
Library    JSONLibrary
Library    libs/userDataFaker.py

Resource    pages/components/navBar.resource
Resource    pages/signupLogin.resource
Resource    pages/signup.resource

*** Keywords ***
Start new session
    New Browser    browser=chromium    headless=False
    New Page    https://www.automationexercise.com/