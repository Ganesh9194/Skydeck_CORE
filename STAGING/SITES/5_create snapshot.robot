*** Settings ***
Documentation    This suite is used to create snapshots
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/create_snapshot.csv   encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    create snapshot

*** Test Cases ***
Create snapshot
    [Tags]    REGRESSION

*** Keywords ***
create snapshot
    [Arguments]    ${sitenames}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Sites Module
    #Click On Sites Tab
    Click Element    //div[normalize-space()='Sites']
    Search For Site    ${sitenames}
    ${page contains} =    Run Keyword And Return Status    Page Should Contain Element    //span[@class='HelperCard__text']
    Run Keyword If    ${page contains}    Click Element    //span[@class='HelperCard__text']
    Click Element    //div[normalize-space()='Create Snapshot']
    Enter Snapshot Name
    Select Snapshot Dates
    Enter Snapshot Description
    Select 2D Option
    Click On Create Snapshot Button
    
    
    
    
    



