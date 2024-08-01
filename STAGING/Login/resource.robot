*** Settings ***
Documentation    To store all the globally used keywords
Library    SeleniumLibrary


*** Variables ***
${user_name}      ganesh.l@asteria.co.in
${password}       Asteria@123
${stage_Url}      https://skydeck-staging.asteria.co.in/ui/dashboard/e596c680-cefb-4ec5-bf55-920ac3a5e0ad
${prod_Url}  
${invalid_password}    123456


*** Keywords ***
open Skydeck application in chrome browser

    Create Webdriver    Chrome    executable_path=D:/chromedriver-win64/chromedriver-win64/chromedriver.exe
    Go To    ${stage_Url}
    Set Browser Implicit Wait    10

Provide login credentials
        [Arguments]    ${user_name}     ${password}
        Input Text    //input[@placeholder='yours@example.com']        ${user_name}
        Input Password    //input[@placeholder='your password']       ${password}
        Click Button    //button[@name='submit']
        Set Browser Implicit Wait    10

Provide invalid login credentials
    Input Text    //input[@placeholder='yours@example.com']        ${user_name}
        Input Password    //input[@placeholder='your password']       ${invalid_password}
        Click Button    //button[@name='submit']
        Wait Until Element Is Visible    //span[contains(text(),'Wrong email or password.')]