*** Settings ***
Documentation    This test case is used to delete payloads
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/delete_payload.csv    encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    delete payloads

*** Test Cases ***    payloadnames
delete payloads

*** Keywords ***
delete payloads
    [Arguments]    ${payloadname}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Fleets Module
    Click On Payload Option In Fleets Page
    Payload To Be Deleted    ${payloadname}
    #Close Browser




