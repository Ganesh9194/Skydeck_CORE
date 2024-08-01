*** Settings ***
Documentation    This suite is used to validate Teams functionality in Fleets module
Library    SeleniumLibrary
Library    Collections
Resource    resource.robot

*** Test Cases ***
Error message should be displayed if the length of team name is less than 5 chratacters
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Fleets Module
    Click On Create Teams
    Enter Team Name    Team
    Select Project
    Wait Until Element Is Visible    //span[@class='ErrorMessage']
    Take Screenshot    teamname.png
    Close Browser





    








    






