*** Settings ***

Library    Browser

*** Keywords ***
Inserir dados de contato
    [Arguments]    ${NAME}    ${EMAIL}    ${SUBJECT}    ${MESSAGE}
    Fill Text    [data-qa="name"]    ${NAME}
    Fill Text    [data-qa="email"]    ${EMAIL} 
    Fill Text    [data-qa="name"]    ${NAME}
    Fill Text    [data-qa="subject"]    ${SUBJECT}
    Fill Text    [data-qa="message"]    ${MESSAGE}
    Upload File By Selector    xpath=//input[@name="upload_file"]    ${EXECDIR}/files/contato.txt

Enviar mensagem de contato
    ${message}=    Handle Future Dialogs    accept
    Sleep    2
    Click    [data-qa="submit-button"]

Validar envio de contato
    Wait For Elements State    css=#contact-page > div.row > div.col-sm-8 > div > div.status.alert.alert-success    visible    10s
    Get Text    css=#contact-page > div.row > div.col-sm-8 > div > div.status.alert.alert-success    Equal    Success! Your details have been submitted successfully.