*** Settings ***
Documentation    This suite is used to validate Drones functionality in Fleets module
Library    SeleniumLibrary
Resource    resource.robot

*** Test Cases ***

Error message should be displayed if the length of drone name is less than 5 chratacters
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Fleets Module
    Click On Create Button
    Click On New Drone
    Input Text    //input[@placeholder='Enter drone name']      Dron
    Enter Drone UUIN
    Wait Until Element Is Visible    //span[@class='ErrorMessage']
    Take Screenshot    drone.png
    Close Browser



        




    






    




