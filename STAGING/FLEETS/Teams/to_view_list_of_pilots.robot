*** Settings ***
Documentation    This suite is used to validate Teams functionality in Fleets module
Library    SeleniumLibrary
Library    Collections
Resource    resource.robot

*** Test Cases ***
To see list of pilots in fleets page
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Fleets Module
    Mouse Over    (//div[@class='Card TeamStatusCard'])[1]
    Click Element    //div[@class='Home__status']//div[1]//div[2]//div[1]//button[1]//div[1]
    Close Browser









    








    






