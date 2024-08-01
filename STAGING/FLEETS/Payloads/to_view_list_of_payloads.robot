*** Settings ***
Documentation    This suite is used to validate payload functionality in Fleets module
Library    SeleniumLibrary
Resource    resource.robot

*** Test Cases ***
To see list of Payloads in fleets page
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Fleets Module
    Click On Payload Option In Fleets Page
    Close Browser
