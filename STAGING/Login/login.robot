*** Settings ***
Documentation    This suite is used to validate login to skydeck
Library    SeleniumLibrary
#Library    DataDriver    file=testdata.csv
Resource      resource.robot
Test Template    Validate Login

*** Test Cases ***    username    password
Invalid username    alnis741@lopvede.com   uuyu@123
Invalid password    alnisa741@lopvede.com    123456
Valid credentials    alnisa741@lopvede.com   test@123


*** Keywords ***
Validate login
    [Arguments]    ${username}    ${password}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials    ${username}    ${password}
    Set Selenium Implicit Wait    10
    Close Browser
    
    




