*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}  https://www.google.com/
${search_web}  FlipKart
${Email}    pradeep@gmail.com
${password}     12345

*** Test Cases ***
google test
    [Documentation]  open google
    [Tags]  internet
    open browser  ${web_url}   chrome
    maximize browser window
    input text  name:q  ${search_web}
    submit form
    click element  class:LC20lb

Flipkart Search Test
    click button  class:_2KpZ6l
    input text  name:q  Iphone
    click button  class:L0Z3Pu
    sleep  4s

By Product
    click element  xpath=//html/body/div/div/div[3]/div[1]/div[2]/div[3]/div/div/div/a/div[2]/div[1]/div[1]
    sleep  3s
    switch window  title:APPLE iPhone 13 ( 128 GB GB Storage, 0 GB RAM ) Online at Best Price On Flipkart.com
    sleep  3s
    click button  xpath=//html/body/div[1]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[2]/form/button
    sleep  8s
    input text  xpath=//html/body/div[1]/div/div[2]/div/div[1]/div[1]/div/div/div/div/div[1]/div/form/div[1]/input  ${Email}
    sleep  3s
    click button  xpath=//html/body/div[1]/div/div[2]/div/div[1]/div[1]/div/div/div/div/div[1]/div/form/div[3]/button
    sleep  2s
    input text  xpath=//html/body/div[1]/div/div[2]/div/div[1]/div[1]/div/div/div/div/div[1]/div/form/div[2]/input  ${password}
    sleep   2s
    click button  xpath=//html/body/div[1]/div/div[2]/div/div[1]/div[1]/div/div/div/div/div[1]/div/form/div[4]/button
    sleep   4s
    close browser


*** Keywords ***