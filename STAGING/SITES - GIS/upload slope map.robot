*** Settings ***
Documentation    This TC is used to upload slope map
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/upload slope map.csv   encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    upload slope map

*** Test Cases ***
upload slope map

*** Keywords ***
upload slope map
    [Arguments]    ${sitenames}    ${snapshot_date}    ${upload document path}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Sites Module
    Click On Sites Tab
    Search For Site    ${sitenames}
    Upload Slope Map For Snapshot    ${snapshot_date}    ${upload document path}
    Close Browser
