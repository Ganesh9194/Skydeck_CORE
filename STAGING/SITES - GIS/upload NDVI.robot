*** Settings ***
Documentation    This TC is used to upload NDVI
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/upload NDVI.csv   encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    upload NDVI

*** Test Cases ***
upload NDVI

*** Keywords ***
upload NDVI
    [Arguments]    ${sitenames}    ${snapshot_date}    ${upload document path}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Sites Module
    Click On Sites Tab
    Search For Site    ${sitenames}
    Upload NDVI For Snapshot      ${snapshot_date}    ${upload document path}
    Close Browser
