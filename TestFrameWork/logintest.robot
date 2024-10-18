*** Settings ***
Library    SeleniumLibrary


*** Variable ***


*** Test Cases ***
logintest
    Open Browser    http://opensource-demo.orangehrmlive.com    chrome
    Maximize Browser Window
    Set Browser Implicit Wait   20
    Input Text    name=username    Admin
    Input Text    name=password    admin123
    Click Button    xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Click Element    xpath=//header/div[1]/div[2]/ul[1]/li[1]/span[1]/i[1]
    Click Element    link:Logout
    Close Browser
    Log    Test completed