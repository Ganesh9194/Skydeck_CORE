*** Settings ***
Documentation    This TC is used to upload files in site documents
Library    SeleniumLibrary
Library    OperatingSystem
Library    DateTime
Library    DataDriver    file=Test_data/delete files permanently from site document.csv  encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    delete file from site document

*** Test Cases ***
delete file from site document

*** Keywords ***
delete file from site document
    [Arguments]    ${sitenames}    ${documentname}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Sites Module
    Click On Sites Tab
    Search For Site    ${sitenames}
    Click Element    //div[normalize-space()='Site Documents']
    Select File To Delete Permanently From Site Document     ${documentname}
    Close Browser


    
   
    
     

