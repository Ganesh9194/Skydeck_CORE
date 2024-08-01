*** Settings ***
Documentation    To store all the globally used keywords
Library    SeleniumLibrary
Library    Collections
Library    String


*** Variables ***
${user_name}          alnisa741@lopvede.com
${password}           test@123
${stage_Url}          https://skydeck-staging.asteria.co.in/ui/dashboard/e596c680-cefb-4ec5-bf55-920ac3a5e0ad
${prod_Url}  
${invalid_password}   123456
${teamname}           test_team
${edit_team_name}     Team2
${assigned}           Assigned
${dronestatus}
${cardName}
${delete_button}
${payloadstatus}
${dronename}
${random_name}

*** Keywords ***
open Skydeck application in Chrome browser
    Create Webdriver    Chrome    executable_path=D:/chromedriver-win64/chromedriver-win64/chromedriver.exe
    Go To    ${stage_Url}
    Maximize Browser Window
    Set Browser Implicit Wait    10

Provide login credentials
    Input Text    //input[@placeholder='yours@example.com']        ${user_name}
    Input Password    //input[@placeholder='your password']       ${PASSWORD}
    Click Button    //button[@name='submit']
    Set Browser Implicit Wait    10

Zoom In
    Execute JavaScript    document.body.style.zoom = "1"

Zoom Out
    Execute Javascript    document.body.style.zoom = "0.75"

Provide invalid login credentials
    Input Text    //input[@placeholder='yours@example.com']        ${user_name}
    Input Password    //input[@placeholder='your password']       ${invalid_password}
    Click Button    //button[@name='submit']
    Wait Until Element Is Visible    //span[contains(text(),'Wrong email or password.')]

Click on Fleets module
    Click Element          //img[@alt='Fleets']
    Run Keyword And Ignore Error    //button[@title='Not Right Now']

click on create button
    Click Element    //div[contains(text(),'create')]
    Run Keyword And Ignore Error    //button[@title='Not Right Now']

Close downtime banner
    Click Element    //i[@class='Icon Icon-close Banner__icon-close']

#click on 3-dots
    #Click Element    //div[contains(@class,'Home__content-body')]//div[2]//div[1]//div[1]//button[1]//div[1]//i[1]

click on new drone
    Click Element    //span[normalize-space()='new drone']

Enter drone name
    ${random_name}    Generate Random String  3  12345678
    Input Text    //input[@placeholder='Enter drone name']    Drone_${random_name}

Enter drone UUIN
    ${random_UUIN}    Generate Random String  5  12345678
    Input Text    //input[@placeholder='Enter drone UIN']    ${random_UUIN}

select A200 drone type
    Click Element    //div[@class='SelectionList__header-text']
    Click Element    //button[normalize-space()='A200']

select A410 drone type
    Click Element    //div[@class='SelectionList__header-text']
    Click Element    //button[normalize-space()='A410']

select A410-XT drone type
    Click Element    //div[@class='SelectionList__header-text']
    Click Element    //button[normalize-space()='A410-XT']

select A200-XT drone type
    Click Element    //div[@class='SelectionList__header-text']
    Click Element    //button[normalize-space()='A200-XT']

select AT-05 drone type
    Click Element    //div[@class='SelectionList__header-text']
    Click Element    //button[normalize-space()='AT-05']

Save drone
    Click Element    //div[normalize-space()='Save Drone']

Delete Drone
    Click Element    //span[normalize-space()='delete']
    Click Element    //div[normalize-space()='Delete']

Click on Drone option in Fleets page
    Mouse Over    (//div[@class='Card TeamStatusCard'])[2]
    Click Element    (//div[@class='Button__text'][normalize-space()='view'])[2]

Take screenshot
    [Arguments]    ${imagename}
    Set Screenshot Directory    D:\Automation screenshots
    Capture Page Screenshot    filename= ${imagename}

Drone to be Deleted
    [Arguments]     ${dronename}
    Scroll Element Into View    //tbody/tr/td[2]
    ${dronenames}=    Get Webelements     //tbody/tr/td[2]
    ${index}=   Set Variable    -10
    FOR    ${title}    IN    @{dronenames}
        Exit For Loop If    '${dronename}'=='${title.text}'
        ${index}=  Evaluate   ${index} + 1
    END
    Scroll Element Into View    //tbody[1]/tr[${index}]/td[1]/i[1]
    Click Element    //tbody[1]/tr[${index}]/td[1]/i[1]
    Click Element    //div[contains(text(),'Remove selected drone(s)')]
    Click Element    //div[normalize-space()='Delete']








