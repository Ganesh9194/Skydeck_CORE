*** Settings ***
Documentation    This test-case is used to edit teams
Library    SeleniumLibrary
Library    DataDriver    file=Test_data/edit team.csv    encoding=utf_8    dialect=unix
Library    Collections
Resource    resource.robot
Test Template    edit teams

*** Test Cases ***
edit teams

*** Keywords ***
edit Teams

    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Fleets Module
    Run Keyword And Ignore Error        //button[@title='Not Right Now']
    Click Element    //div[@class='FleetCard__threedots']//i[@alt='three-dots']
    Click Element    //body/div[@id='root']/div[@class='App']/div[@class='Home']/div[@class='Home__content']/div[@id='teams']/div[@class='Home__content-fleets']/div[@class='Card FleetCard']/div[@class='FleetCard__threedots']/div[@class='Options Options--active']/div[@class='Dropdown Options__dropdown']/div[1]
    Click Element    //div[normalize-space()='Save Team']
    Wait Until Element Is Visible        //div[@class='Alert Alert--info']
    Close Browser






    








    






