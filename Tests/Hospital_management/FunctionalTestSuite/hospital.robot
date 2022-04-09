*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${login_name}   admin
${login_password}   12345
*** Test Cases ***
Hospital login test
    [Documentation]  Login page
    [Tags]  admin
    open browser  http://127.0.0.1:5000    chrome
    maximize browser window
    sleep  2s
    input text  name:username   ${login_name}
    sleep  1s
    input password  name:password   ${login_password}
    click button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  3s

Registration tested
    [Documentation]  Registration
    [Tags]  admin
    input text  name:name   Tharun
    sleep  1s
    input text  name:mobnumber  123456789
    sleep  1s
    input text  name:age    20
    sleep  1s
    input text  name:address    41 kg valasu post
    sleep  1s
    input text  name:dob    2/2/2002
    sleep  1s
    input text  name:place  Erode
    sleep  1s
    input text  name:pincode    638050
    sleep  1s
    click button  xpath=//html/body/div/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  2s

Search Patient test
    [Documentation]  Search Patient
    [Tags]  admin
    click link  xpath=//html/body/nav/div/div/ul/li[1]/a
    sleep  3s
    input text  name:mobnumber  123456789
    sleep  2s
    click button  xpath=//html/body/div/div/div/form/table[1]/tbody/tr[2]/td[2]/button
    sleep  5s

Viewall Patient test
    [Documentation]  Viewall Patient
    [Tags]  admin
    click link  xpath=//html/body/nav/div/div/ul/li[4]/a
    sleep  5s

Update Patient test
    [Documentation]  Update Patient
    [Tags]  admin
    click link  xpath=//html/body/nav/div/div/ul/li[2]/a
    sleep   1s
    input text  name:mobnumber  123456789
    sleep  1s
    click button    xpath=//html/body/div/div/div/form[1]/table/tbody/tr[2]/td[2]/button
    sleep   1s
    input text  name:name   tharun prasath
    sleep   1s
    click button    xpath=//html/body/div/div/div/form[2]/table/tbody/tr[8]/td[2]/button
    sleep  3s

Delete Patient test
    [Documentation]  Delete Patient
    [Tags]  admin
    click link  xpath=//html/body/nav/div/div/ul/li[3]/a
    sleep  2s
    input text  name:mobnumber  123456789
    click button  xpath=//html/body/div/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  2s
    click link  xpath=//html/body/nav/div/div/ul/li[4]/a
    sleep  5s
    close browser

*** Keywords ***
