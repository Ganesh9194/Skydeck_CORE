*** Settings ***
Documentation    This test case is used to delete drones
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/delete_drone.csv    encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    delete drones

*** Test Cases ***
Drone ${dronename} is deleted
    [Tags]    REGRESSION    SMOKE

*** Keywords ***
delete drones
    [Arguments]    ${dronename}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Fleets Module
    Click On Drone Option In Fleets Page
    Drone To Be Deleted    ${dronename}
    Close Browser





        




    






    




