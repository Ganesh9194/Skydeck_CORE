*** Settings ***
Documentation    This test case is used to create drones
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/create_drone.csv    encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    create drones

*** Test Cases ***    
create Drone
    [Tags]    REGRESSION    smokee

*** Keywords ***
create drones
    
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Fleets Module
    Click On Create Button
    Click On New Drone
    Enter Drone Name
    Enter Drone UUIN
    Select A200 Drone Type
    Save Drone
    Click Element    //i[@class='Icon Icon-close']

    Click On Create Button
    Click On New Drone
    Enter Drone Name
    Enter Drone UUIN
    Select A410 Drone Type
    Save Drone
    Click Element    //i[@class='Icon Icon-close']

    Click On Create Button
    Click On New Drone
    Enter Drone Name
    Enter Drone UUIN
    Select A410-XT Drone Type
    Save Drone
    Click Element    //i[@class='Icon Icon-close']

    Click On Create Button
    Click On New Drone
    Enter Drone Name
    Enter Drone UUIN
    Select A200-XT Drone Type
    Save Drone
    Click Element    //i[@class='Icon Icon-close']

    Click On Create Button
    Click On New Drone
    Enter Drone Name
    Enter Drone UUIN
    Select AT-05 Drone Type
    Save Drone
    Click Element    //i[@class='Icon Icon-close']
    Close Browser
