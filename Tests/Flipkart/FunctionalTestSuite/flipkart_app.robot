*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${web_url}  https://www.google.com/
${search_web}  FlipKart
*** Test Cases ***
google test
    [Documentation]  open google
    [Tags]  internet
    open browser  ${web_url}   chrome
    maximize browser window
    input text  name:q  ${search_web}
    submit form
    click element  class:LC20lb

Flipkart Search
    click button  class:_2KpZ6l
    input text  name:q  Wrist watch
    click button  class:L0Z3Pu
    sleep  5s
    close browser


*** Keywords ***