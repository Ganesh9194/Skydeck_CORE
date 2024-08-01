*** Settings ***
Documentation    This suite is used to validate Teams functionality in Fleets module
Library    SeleniumLibrary
Library    Collections
Resource    resource.robot

*** Test Cases ***
To view all teams
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Fleets Module
    Mouse Over    //span[@class='HoverTitle__hover']
    Click Element    //div[@class='FleetCard__hover-area']//div[@class='Button__text'][normalize-space()='view']
    Close Browser






    








    






