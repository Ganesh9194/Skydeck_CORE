*** Settings ***
Documentation    This suite is used to validate payload functionality in Fleets module
Library    SeleniumLibrary
Resource    resource.robot

*** Test Cases ***
Error message should be displayed if the length of payload name is less than 5 chratacters
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Fleets Module
    Click On Create Button
    Click On New Payload
    Enter Payload Name    pay
    Enter Payload ID
    Wait Until Element Is Visible    //span[@class='ErrorMessage']
    Take Screenshot    Payloadname_field_validation.png
    Close Browser


