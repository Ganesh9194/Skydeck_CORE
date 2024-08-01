*** Settings ***
Documentation    This test-case is used to validate Teams functionality in Fleets module
Library    SeleniumLibrary
Resource    resource.robot

*** Test Cases ***
To Navigate to Project Module
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Project Module
    Close Browser



        



