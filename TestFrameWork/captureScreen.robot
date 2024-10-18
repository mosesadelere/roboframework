*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${appBrowser}    chrome
${baseUrl}       https://opensource-demo.orangehrmlive.com
${password}    admin123


*** Test Cases ***
LogonTC
    Open Browser    ${baseUrl}    ${appBrowser}
    Maximize Browser Window
    Set Browser Implicit Wait    10
    Input Text    xpath=//body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[1]/div[1]/div[2]/input[1]    Admin
    Input Password    xpath://body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[2]/div[1]/div[2]/input[1]    ${password}
    Capture Element Screenshot    //*[@id="app"]/div[1]/div/div[1]/div/div[1]/img
    Capture Page Screenshot
    Click Button    //body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[3]/button[1]
    Capture Element Screenshot    //body/div[@id='app']/div[1]/div[1]/aside[1]/nav[1]/div[1]/a[1]/div[2]/img[1]
    Capture Page Screenshot