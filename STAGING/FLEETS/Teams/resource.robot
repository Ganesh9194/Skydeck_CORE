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
${teamm}
${assigned}           Assigned
${dronestatus}
${width}                800
${height}               600
${cardName}
${delete_button}
${payloadstatus}
${location}


*** Keywords ***
open Skydeck application in Chrome browser

    Create Webdriver    Chrome    executable_path=D:/chromedriver-win64/chromedriver-win64/chromedriver.exe
    Go To    ${stage_Url}

    Maximize Browser Window
    Set Browser Implicit Wait    10

Provide login credentials

       Input Text    //input[@placeholder='yours@example.com']        ${user_name}
        Input Password    //input[@placeholder='your password']       ${password}
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

click on create button
    Click Element    //div[contains(text(),'create')]

Close downtime banner
    Click Element    //i[@class='Icon Icon-close Banner__icon-close']


Click on create Teams
    Click Element        //div[@class='HelperCard']

Enter Team name
    ${random_name}    Generate Random String  3  12345678
    Input Text    //input[@placeholder='Enter team name']    Team_${random_name}

Select project
    #[Arguments]    ${projectname}
    Click Element    //div[@class='FleetForm__details-inputs'][2]/div/div
    #Select From List By Label        //div[@class='FleetForm__details-inputs'][2]/div/div/div/button    ${projectname}
    Click Element    //button[normalize-space()='project-6']


Enter Team description
    Input Text    //input[contains(@placeholder,'Team Description')]    Testing

select pilot
    Click Element    //i[@class='Icon Icon-checkbox-blank']

select Drone
    Click Element    //span[normalize-space()='Choose Drone']
    Click Element        //div[contains(@class,'ChoosePilot')]//div[1]//div[1]//div[2]//div[1]//div[1]//div[2]//i[1]


select Payload
    Click Element    //span[normalize-space()='Choose Payload']
    Click Element        //div[contains(@class,'ChoosePilot')]//div[1]//div[1]//div[2]//div[1]//div[1]//div[2]//i[1]

Enter location
    [Arguments]    ${location}
    Click Element    //input[contains(@placeholder,'Search for location')]
    Input Text    //input[@placeholder='Search for location']   ${location}
    Set Selenium Implicit Wait    10
    Click Element    //button[@class='Button Button--active']//i[@alt='search']
    Click Element    //div[@class='Map']//div[1]//span[1]

Save Team
    Click Element        //div[normalize-space()='Save Team']

Take screenshot
    [Arguments]    ${imagename}
    Set Screenshot Directory    D:\Automation screenshots
    Capture Page Screenshot    filename= ${imagename}

Team to be deleted
    [Arguments]     ${teamname}
    ${cardnames}=    Get Webelements     //div[@class='HoverTitle']
    ${index}=   Set Variable    1
    FOR    ${title}    IN    @{cardnames}
        Exit For Loop If    '${teamname}'=='${title.text}'
        ${index}=  Evaluate   ${index} + 1
    END

    Scroll Element Into View       //tbody[1]/tr[${index}]/td[4]/div[1]/button[1]/div[1]/i[1]
    Click Element    //tbody[1]/tr[${index}]/td[4]/div[1]/button[1]/div[1]/i[1]










