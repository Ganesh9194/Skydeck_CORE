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
${payloadname}
${payloadnames}






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
    Run Keyword And Ignore Error    //button[@title='Not Right Now']

click on create button
    Click Element    //div[contains(text(),'create')]
    Run Keyword And Ignore Error    //button[@title='Not Right Now']

Close downtime banner
    Click Element    //i[@class='Icon Icon-close Banner__icon-close']


click on new payload
    Click Element    //span[normalize-space()='new payload']

Enter payload name
    ${random_name}    Generate Random String  3  12345678
    Input Text    //input[@placeholder='Enter payload name']    Payload_${random_name}

Enter payload ID
    ${random_ID}    Generate Random String  5  12345678
    Input Text        //input[@placeholder='Enter payload ID']    ${random_ID}

Select payload type 24MP Image Camera with 20mm Lens
    Click Element    //div[@class='SelectionList__header-text']
    Click Element    //button[normalize-space()='24MP Image Camera with 20mm Lens']

select payload type Z10TIR Dual-Sensor Video Camera
    Click Element    //div[@class='SelectionList__header-text']
    Click Element    //button[contains(text(),'Z10TIR Dual-Sensor Video Camera')]

select payload type ZIR35 IR Video Camera
    Click Element    //div[@class='SelectionList__header-text']
    Click Element    //button[normalize-space()='ZIR35 IR Video Camera']

select payload type Q30T 30x Zoom Video Camera
    Click Element    //div[@class='SelectionList__header-text']
    Click Element   //button[normalize-space()='Q30T 30x Zoom Video Camera']

select payload type Q10T 10x Zoom Video Camera
    Click Element    //div[@class='SelectionList__header-text']
    Click Element   //button[normalize-space()='Q10T 10x Zoom Video Camera']

select payload type Multispectral Camera RedEgeMx
    Click Element    //div[@class='SelectionList__header-text']
    Click Element   //button[normalize-space()='Multispectral Camera RedEgeMx']

select payload type 24MP Image Camera with 16mm Lens
    Click Element    //div[@class='SelectionList__header-text']
    Click Element   //button[normalize-space()='24MP Image Camera with 16mm Lens']

select payload type SEL20F28 E Mount
    Click Element    //div[@class='SelectionList__header-text']
    Click Element   //button[normalize-space()='SEL20F28 E Mount']

save payload
    Click Element    //div[normalize-space()='Save Payload']

Edit Payload
    Scroll Element Into View    //tbody/tr[5]/td[7]/div[1]/button[1]/div[1]/i[1]
    Click Element    //tbody/tr[5]/td[7]/div[1]/button[1]/div[1]/i[1]
    Click Element    //tbody/tr/td/div[@class='Options Options--active']/div[@class='Dropdown Options__dropdown']/div[1]

Click on payload option in Fleets page
    Mouse Over    (//div[@class='Card TeamStatusCard'])[3]
    Click Element   (//div[@class='Button__text'][normalize-space()='view'])[3]

Take screenshot
    [Arguments]    ${imagename}
    Set Screenshot Directory    D:\Automation screenshots
    Capture Page Screenshot    filename= ${imagename}

payload to be deleted
    [Arguments]     ${dronename}
    Scroll Element Into View    //tbody/tr/td[2]
    ${dronenames}=    Get Webelements     //tbody/tr/td[2]
    ${index}=   Set Variable    1
    FOR    ${title}    IN    @{dronenames}
        Exit For Loop If    '${dronename}'=='${title.text}'
        ${index}=  Evaluate   ${index} + 1
    END
    Scroll Element Into View    //tbody[1]/tr[${index}]/td[1]/i[1]
    Click Element    //tbody[1]/tr[${index}]/td[1]/i[1]
    Click Element    //div[contains(text(),'Remove selected payload(s)')]
    Click Element    //div[normalize-space()='Delete']

       






