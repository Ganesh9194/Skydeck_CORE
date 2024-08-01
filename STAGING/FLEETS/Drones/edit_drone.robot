*** Settings ***
Documentation    This test case is used to edit Drones
Library    SeleniumLibrary
Resource    resource.robot

*** Test Cases ***
To Edit Drone
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Fleets Module
    Click On Drone Option In Fleets Page
    Click Element    //tbody/tr[1]/td[7]/div[1]/button[1]/div[1]/i[1]
    Click Element    //tbody/tr/td/div[@class='Options Options--active']/div[@class='Dropdown Options__dropdown']/div[1]
    Save Drone
    #Wait Until Element Is Visible    //span[normalize-space()='Edited drone drone-1']
    #${result}=    Get Text    //span[normalize-space()='Edited drone drone-1']
    #Should Be Equal As Strings    ${result}        Edited drone drone-1
    Close Browser



        




    






    




