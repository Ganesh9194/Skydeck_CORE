*** Settings ***
Documentation    This test-case is used to create team
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/create_team.csv    encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    create teams

*** Test Cases ***
create team
    [Tags]    REGRESSION

*** Keywords ***
create teams
    [Arguments]      ${location}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Fleets Module
    Click On Create Teams
    Enter Team Name
    #Select Project
    Enter Team Description

    Set Selenium Implicit Wait    10
    Select Pilot
    Select Drone
    Select Payload
    Enter Location    ${location}
    Maximize Browser Window
    Save Team
    Close Browser