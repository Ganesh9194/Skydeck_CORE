*** Settings ***
Documentation    This test case is used to delete sites from archive
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/delete sites from archive.csv   encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    delete sites from archive

*** Test Cases ***
Delete sites from archive
    [Tags]    REGRESSION

*** Keywords ***
delete sites from archive
    [Arguments]    ${sitenames}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Sites Module
    Click On Archive Tab
    Site To Be Deleted From Archive       ${sitenames}
    Close Browser


