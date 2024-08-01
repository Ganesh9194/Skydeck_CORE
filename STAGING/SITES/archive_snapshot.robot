*** Settings ***
Documentation    This TC is used to archive snapshots
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/archive_snapshots.csv   encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    archive snapshots

*** Test Cases ***
Archive snapshot
    [Tags]    REGRESSION

*** Keywords ***
archive snapshots
    [Arguments]    ${sitenames}    ${snapshot_date}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Sites Module
    Click On Sites Tab
    Search For Site    ${sitenames}
    Archive Snapshot    ${snapshot_date}
    Close Browser

