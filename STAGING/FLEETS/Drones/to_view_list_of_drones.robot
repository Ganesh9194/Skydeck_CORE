*** Settings ***
Documentation    This test case is used to view list of drones
Library    SeleniumLibrary
Resource    resource.robot

*** Test Cases ***
To see list of Drones in fleets page
    Open Skydeck Application In Chrome Browser
    Provide Login Credentials
    Click On Fleets Module
    Click On Drone Option In Fleets Page
    Close Browser




        




    






    




