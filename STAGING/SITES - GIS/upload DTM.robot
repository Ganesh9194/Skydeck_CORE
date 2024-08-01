*** Settings ***
Documentation    This TC is used to upload orthophoto
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/upload DTM.csv   encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    upload DTM

*** Test Cases ***
upload DTM

*** Keywords ***
upload DTM
    [Arguments]    ${sitenames}    ${snapshot_date}    ${upload document path}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Sites Module
    Click On Sites Tab
    Search For Site    ${sitenames}
    Upload DTM For Snapshot    ${snapshot_date}    ${upload document path}
    Close Browser
