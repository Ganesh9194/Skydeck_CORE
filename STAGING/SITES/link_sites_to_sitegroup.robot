*** Settings ***
Documentation    This TC is used to link sites to sitegroups
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/link_sites.csv    encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    link sites to sitegroup

*** Test Cases ***
Link site to sitegroup

*** Keywords ***
link sites to sitegroup
    [Arguments]    ${sitegroupnames}    ${sitenames}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Sites Module
    Search For Sitegroup    ${sitegroupnames}
    Link Sites    ${sitenames}
    Close Browser










