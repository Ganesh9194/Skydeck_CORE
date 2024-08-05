*** Settings ***
Documentation    This TC is used to unarchive sites
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/unarchive_sites.csv   encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    unarchive sites

*** Test Cases ***
unarchive site
    [Tags]    REGRESSION

*** Keywords ***
unarchive sites
    [Arguments]    ${sitenames}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Sites Module
    Click On Sites Tab
    Click On Archive Tab
    Unarchive Site    ${sitenames}




