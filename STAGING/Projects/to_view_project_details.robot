*** Settings ***
Documentation    This suite is used to validate Teams functionality in Fleets module
Library    SeleniumLibrary
Resource    resource.robot

*** Test Cases ***
To view the project details

    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Project Module
    Select The Project
    Click Element    //div[normalize-space()='View Project Details']
    Take Screenshot    project-1.png
    Close Browser


        



