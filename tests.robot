** Settings ***
Documentation
Resource       resources.robot
Library        Selenium2Library
*** Variables ***
${Page}     http://localhost:8000

***Test Cases***
Login Test
    Set Selenium Speed    0.3 seconds
    Open Browser    ${Page}     chrome
    Login
    Check Account

Profile Page Test
    Checking Contact Details
    Checking Company Details

Settings Tab Test
    Shift To Settings Tab
    Turn On All Notifications
    Click Element    ${Button}
    Close Browser