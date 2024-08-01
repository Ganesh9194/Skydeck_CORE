*** Settings ***
Documentation    This TC is used to upload orthophoto
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/upload DSM.csv   encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    upload DSM

*** Test Cases ***
upload DSM

*** Keywords ***
upload DSM
    [Arguments]    ${sitenames}    ${snapshot_date}    ${upload document path}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Sites Module
    Click On Sites Tab
    Search For Site    ${sitenames}
    Upload DSM For Snapshot    ${snapshot_date}    ${upload document path}
    Close Browser
