*** Settings ***
Documentation    This TC is used to unlink sites from sitegroups
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/unlink_sites.csv    encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    unlink sites from sitegroup

*** Test Cases ***
unlink sites from sitegroup

*** Keywords ***
unlink sites from sitegroup
    [Arguments]       ${sitenames}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Sites Module
    Click On Sites Tab
    Search For Site    ${sitenames}
    Click Element    //div[normalize-space()='More details']
    Scroll Element Into View    //i[@class='Icon Icon-unlink']
    Click Element    //i[@class='Icon Icon-unlink']
    Click Element    //div[normalize-space()='Unlink']
    Close Browser










