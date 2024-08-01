*** Settings ***
Documentation    This test-case is used to create a projects
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/create_project_with_teams.csv    encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    create project

*** Test Cases ***
create project
    [Tags]    REGRESSION

*** Keywords ***
create project
    [Arguments]      ${Sday}    ${Sdate}    ${Syear}    ${Eday}    ${Edate}    ${Eyear}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Project Module
    Click On Create Button
    Enter Project Name
    Select Project Date    ${Sday}    ${Sdate}    ${Syear}    ${Eday}    ${Edate}    ${Eyear}
    Select Email
    Project Location
    Click On Reserve Teams And Save Project
    Close Browser
