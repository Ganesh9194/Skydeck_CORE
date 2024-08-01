*** Settings ***
Documentation    This suite is used to validate Drones functionality in Fleets module
Library    SeleniumLibrary
Resource    resource.robot

*** Test Cases ***

To verify duplicate Drone is not created
    [Tags]    REGRESSION
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    #Close Downtime Banner
    Click On Fleets Module
    #Close Downtime Banner
    Click On Create Button
    Click On New Drone
    Input Text    //input[@placeholder='Enter drone name']     duplicate drone
    Enter Drone UUIN
    Select A200 Drone Type
    Save Drone
    Click Element    //i[@class='Icon Icon-close']
    Click On Create Button
    Click On New Drone
    Input Text    //input[@placeholder='Enter drone name']     duplicate drone
    Enter Drone UUIN
    Select A200 Drone Type
    Save Drone
    Wait Until Element Is Visible    //span[normalize-space()='Cannot create duplicate entries']
    ${result}=    Get Text    //span[normalize-space()='Cannot create duplicate entries']
    Log    ${result}
    #Should Be Equal As Strings    ${result}        Cannot create duplicate entries
    Close Browser





