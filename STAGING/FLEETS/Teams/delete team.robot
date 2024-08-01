*** Settings ***
Documentation    This test case is used to delete teams
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/delete_team.csv    encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    delete teams

*** Test Cases ***
delete team
    [Tags]    REGRESSION

*** Keywords ***
delete teams
    [Arguments]    ${teamname}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Fleets Module
    Click Element    //input[@placeholder='Search for teams']
    Input Text    //input[@placeholder='Search for teams']    ${teamname}
    Click Element    //div[contains(@class,'ListOption')]
    Click Element    //div[normalize-space()='Edit']
    Click Element    //div[normalize-space()='Release Team']
    Click Element    //div[normalize-space()='Release']
    Close Browser





    








    






