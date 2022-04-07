*** Settings ***
Library  SeleniumLibrary
*** Variables ***

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
*** Keywords ***