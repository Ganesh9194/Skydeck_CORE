*** Settings ***
Documentation    This suite is used to delete sites
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/delete_sites.csv   encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    delete sites

*** Test Cases ***
Delete site
    [Tags]    REGRESSION

*** Keywords ***
delete sites
    [Arguments]    ${sitenames}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Sites Module
    Click On Sites Tab
    Site To Be Deleted    ${sitenames}
    Close Browser


