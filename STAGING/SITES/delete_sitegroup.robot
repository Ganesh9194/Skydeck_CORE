*** Settings ***
Documentation    This suite is used to delete sitegroup
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/delete_sitegroups.csv    encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    delete sitegroup

*** Test Cases ***
Delete sitegroup

*** Keywords ***
delete sitegroup
    [Arguments]    ${sitegroupnames}
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Sites Module
    Sitegroup To Be Deleted        ${sitegroupnames}
    Close Browser

    









