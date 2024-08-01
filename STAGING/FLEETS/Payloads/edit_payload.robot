*** Settings ***
Documentation    This suite is used to edit payloads
Library    SeleniumLibrary
Resource    resource.robot

*** Test Cases ***

To Edit Payload
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Fleets Module
    Click On Payload Option In Fleets Page
    Edit Payload
    Save Payload
    Close Browser


