*** Settings ***
Documentation    This TC is used to archive sites
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/archive_sites.csv   encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    archive sites

*** Test Cases ***
Archive site
    [Tags]    REGRESSION

*** Keywords ***
archive sites
    [Arguments]    ${sitenames}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Sites Module
    Click On Sites Tab
    Search For Site    ${sitenames}
    Archive Site
    Close Browser

