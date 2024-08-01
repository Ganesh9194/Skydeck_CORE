*** Settings ***
Documentation    This test-case is used to create milestones
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/create_milestone.csv    encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    create milestone

*** Test Cases ***
create milestone
    [Tags]    REGRESSION

*** Keywords ***
create milestone
    [Arguments]    ${projectname}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Project Module
    Select The Project With Search       ${projectname}
    Set Selenium Speed    1 second
    Click On Create Milestone
    Enter Milestone Name
    Select Milestone Start And End Date
    Select Sitegroup
    Click On Create Milestone Button
    Close Browser
