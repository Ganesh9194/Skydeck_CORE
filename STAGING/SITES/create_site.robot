*** Settings ***
Documentation    This suite is used to create sites
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/create_sites.csv   encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    create sites

*** Test Cases ***
Create site
    [Tags]    REGRESSION

*** Keywords ***
create sites
    [Arguments]      ${location}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Sites Module
    Click On +create Button
    Click On New-site Button
    Enter Sitename
    Select Site-type
    Enter Site-location    ${location}
    #Click On Demarcation Line
    Demarcate As Point
    Save Site



