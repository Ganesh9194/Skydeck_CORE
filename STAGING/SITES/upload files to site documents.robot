*** Settings ***
Documentation    This TC is used to upload files in site documents
Library    SeleniumLibrary
Library    OperatingSystem
Library    DateTime
Library    DataDriver    file=Test_data/upload files.csv   encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    upload file to site document

*** Test Cases ***
upload document

*** Keywords ***
upload file to site document
    [Arguments]    ${sitenames}    ${upload document path}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Sites Module
    Click On Sites Tab
    Search For Site    ${sitenames}
    Upload Document    ${upload document path}


    
   
    
     

