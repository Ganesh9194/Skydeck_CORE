*** Settings ***
Library  SeleniumLibrary
Resource    resource.robot
Library    DataDriver    file=Test_data/delete_snapshot.csv   encoding=utf_8    dialect=unix
Test Template    delete snapshot

*** Test Cases ***
delete snapshot
    [Tags]    REGRESSION

*** Keywords ***
delete snapshot
    [Arguments]    ${sitenames}    ${snapshot_date}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Sites Module
    Click On Sites Tab
    Search For Site    ${sitenames}    
    Click Element    //div[normalize-space()='Datasets']
    Click Element    //div[@class='SelectionList__header-text']
    Run Keyword And Ignore Error      //button[text()='${snapshot_date}']
    Click Element    //button[@class='Button']//i[@alt='expand']
    Click Element    //div[normalize-space()='Delete Snapshot']
    Input Text    //input[@type='text']    DELETE SNAPSHOT
    Click Element    //div[normalize-space()='Delete Snapshot']
    Close Browser


