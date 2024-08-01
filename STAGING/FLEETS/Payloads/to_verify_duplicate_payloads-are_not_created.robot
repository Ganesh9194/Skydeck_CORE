*** Settings ***
Documentation    This suite is used to validate payload functionality in Fleets module
Library    SeleniumLibrary
Resource    resource.robot

*** Test Cases ***
To check duplicate payloads are not created
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Fleets Module
    Click On Create Button
    Click On New Payload
    Enter Payload Name    Payload-B
    Enter Payload ID
    Select Payload Type
    Save Payload
    Wait Until Element Is Not Visible    //span[normalize-space()='Created payload']
    Click On Create Button
    Click On New Payload
    Enter Payload Name    Payload-B
    Enter Payload ID
    Select Payload Type
    Save Payload
    Wait Until Element Is Visible    //span[normalize-space()='Cannot create duplicate entries']
    ${result}=    Get Text    //span[normalize-space()='Cannot create duplicate entries']
    Should Be Equal As Strings    ${result}        Cannot create duplicate entries
    Close Browser



