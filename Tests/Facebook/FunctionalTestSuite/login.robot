*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${web_url}  https://www.google.com/
${search_web}  Amazon.in
*** Test Cases ***
log screen test
    [Documentation]  this is login screen
    [Tags]  user
    log  hello

registration screen test
    [Documentation]  this is registration screen
    [Tags]  user
    log  success

admin login test
    [Documentation]  this is Admin screen
    [Tags]  admin
    log  admin


google test
    [Documentation]  open google
    [Tags]  internet
    open browser  ${web_url}   chrome
    maximize browser window
    input text  name:q  ${search_web}
    submit form
    close browser

*** Keywords ***