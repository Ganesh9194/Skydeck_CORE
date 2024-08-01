*** Settings ***
Documentation    To store all the globally used keywords
Library    SeleniumLibrary
Library    DateTime
Library    String

*** Variables ***
${user_name}          alnisa741@lopvede.com
${password}           test@123
${stage_Url}          https://skydeck-staging.asteria.co.in/ui/dashboard/e596c680-cefb-4ec5-bf55-920ac3a5e0ad
${projectname}
${milestonename}
${duplicate_projectname}
${project_start_date}    14
${month_year}    January 2024
${current_month_year}
${testdate}
${Sday}
${Sdate}
${Syear}
${Eday}
${Edate}
${Eyear}

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

click on project module
    Click Element    //img[@alt='Projects']

click on create button
    Click Element    //div[contains(text(),'Create')]
    Click Element    //span[@class='Text Text--listoption ListOption__content-padding']
    
Enter project name
    ${random_name}    Generate Random String  3  12345678
    Input Text    //input[@placeholder='Enter Project name']   Project_${random_name}

Enter duplicate project name
    [Arguments]    ${duplicate_projectname}
    Input Text    //input[@placeholder='Enter Project name']    ${duplicate_projectname}


Select project date
    [Arguments]     ${Sday}    ${Sdate}    ${Syear}    ${Eday}    ${Edate}    ${Eyear}
   Click Element    //input[@placeholder='Enter project start date']
   Click Element    //i[@class='Icon Icon-right-arrow']
   Click Element    //td[@aria-label='${Sday}, ${Sdate}, ${Syear}']
   Click Element    //input[@placeholder='Enter project end date']
   Click Element    //i[@class='Icon Icon-right-arrow']
   Click Element    //td[@aria-label='${Eday}, ${Edate}, ${Eyear}']


Select email
    Input Text        //input[@placeholder='Enter email']    a@a.com

project location
    Click Element    //input[contains(@placeholder,'Search for location')]
    Input Text    //input[@placeholder='Search for location']    India
    Set Selenium Implicit Wait    10
    Click Element    //button[@class='Button Button--active']//i[@alt='search']
    Click Element    //div[@class='Map']//div[1]//span[1]

click on Reserve teams and save project
    Scroll Element Into View    //div[normalize-space()='Reserve Team(s)']
    Click Element    //div[normalize-space()='Reserve Team(s)']
    Click Element    //div[@class='SelectFleets-content-fleets']//div[1]//div[1]//img[1]
    Click Element    //div[normalize-space()='Create Project']

Do not Reserve team and save project
    Scroll Element Into View    //div[normalize-space()='Reserve Team(s)']
    Click Element    //div[normalize-space()='Reserve Team(s)']
    Click Element    //div[normalize-space()='Create Project']

select the project
    [Arguments]     ${projectname}
    ${projectnames}=    Get Webelements     //div[@class='Home__content-projects']/div/div/div/div
    ${index}=   Set Variable    0
    FOR    ${title}    IN    @{projectnames}
        Exit For Loop If    '${projectname}'=='${title.text}'
        ${index}=  Evaluate   ${index} + 1
    END

    Scroll Element Into View       //div[@class='Home__content-projects']/div[${index}]/div[1]/div/button/div/i
    Click Element    //div[@class='Home__content-projects']/div[${index}]/div[4]/button

click on create Milestone
    #Wait Until Element Is Visible    (//div[contains(text(),'Create Milestone')])[1]
    Click Element    (//div[contains(text(),'Create Milestone')])[1]

    
Enter milestone name
     ${random_name}    Generate Random String  3  12345678
    Input Text    //input[@placeholder='Enter name']    Milestone_${random_name}

Select milestone start and end date
    Click Element    //input[@placeholder='Enter milestone start date']
    Click Element    //td[@aria-label='Tuesday, March 26, 2024']

    Click Element    //input[@placeholder='Enter milestone end date']
    Click Element    //td[@aria-label='Wednesday, March 27, 2024']

select Sitegroup
    Click Element    //div[@class='SelectionList__header-text']

    Click Element    //button[@name='siteGroupUuid']

click on create milestone button
    Scroll Element Into View    //div[normalize-space()='Create']
    Click Element    //div[normalize-space()='Create']
    
Take screenshot
    [Arguments]    ${imagename}
    Set Screenshot Directory    D:\Automation screenshots
    Capture Page Screenshot    filename= ${imagename}

select the project with search
    [Arguments]    ${projectname}
    Click Element    //input[@placeholder='Search for projects']
    Input Text    //input[@placeholder='Search for projects']    ${projectname}
    Click Element    //div[@class='ListOption ']

dynamic date
    Click Element    //input[@placeholder='Enter project start date']
    ${current_month_year}    Get Text    //div[@class='CalendarMonthGrid_month__horizontal CalendarMonthGrid_month__horizontal_1']/div/div



      








