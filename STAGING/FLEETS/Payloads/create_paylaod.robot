*** Settings ***
Documentation    This test case is used to create payloads
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/create_payload.csv    encoding=utf_8    dialect=unix
Resource    resource.robot
Test Template    create payloads

*** Test Cases ***    payloadnames
create payload
    [Tags]    REGRESSION

*** Keywords ***
create payloads
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Fleets Module
    Click On Create Button
    Click On New Payload
    Enter Payload Name
    Enter Payload ID
    Select Payload Type Multispectral Camera RedEgeMx
    Save Payload
    Click Element    //i[@class='Icon Icon-close']
    
    Click On Create Button
    Click On New Payload
    Enter Payload Name
    Enter Payload ID
    Select Payload Type Q10T 10x Zoom Video Camera
    Save Payload
    Click Element    //i[@class='Icon Icon-close']

    Click On Create Button
    Click On New Payload
    Enter Payload Name
    Enter Payload ID
    Select Payload Type Q30T 30x Zoom Video Camera
    Save Payload
    Click Element    //i[@class='Icon Icon-close']

    Click On Create Button
    Click On New Payload
    Enter Payload Name
    Enter Payload ID
    Select Payload Type SEL20F28 E Mount
    Save Payload
    Click Element    //i[@class='Icon Icon-close']

    Click On Create Button
    Click On New Payload
    Enter Payload Name
    Enter Payload ID
    Select Payload Type Z10TIR Dual-Sensor Video Camera
    Save Payload
    Click Element    //i[@class='Icon Icon-close']

    Click On Create Button
    Click On New Payload
    Enter Payload Name
    Enter Payload ID
    Select Payload Type ZIR35 IR Video Camera
    Save Payload
    Click Element    //i[@class='Icon Icon-close']

    Click On Create Button
    Click On New Payload
    Enter Payload Name
    Enter Payload ID
    Select Payload Type 24MP Image Camera With 16mm Lens
    Save Payload
    Click Element    //i[@class='Icon Icon-close']

    Click On Create Button
    Click On New Payload
    Enter Payload Name
    Enter Payload ID
    Select Payload Type 24MP Image Camera With 20mm Lens
    Save Payload
    Close Browser
