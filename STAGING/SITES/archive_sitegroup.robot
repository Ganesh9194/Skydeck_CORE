*** Settings ***
Documentation    This TC is used to archive sitegroups
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/archive_sitegroups.csv   encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    archive sitegroups

*** Test Cases ***
Archive sitegroup

*** Keywords ***
archive sitegroups
    [Arguments]    ${sitegroupnames}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Sites Module
    Archive Sitegroup


