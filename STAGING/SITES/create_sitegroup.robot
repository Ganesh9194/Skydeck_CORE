*** Settings ***
Documentation    This suite is used to create sitegroup
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/create_sitegroups.csv    encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    create sitegroup

*** Test Cases ***
Create sitegroup
    [Tags]    REGRESSION

*** Keywords ***
create sitegroup
    [Arguments]      ${location}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Sites Module
    Click On +create Button
    Click On New Site-group Button
    Enter Sitegroup Name
    Enter Site-location    ${location}
    Save Sitegroup










