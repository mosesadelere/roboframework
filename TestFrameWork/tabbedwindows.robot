*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${appBrowser}    chrome
${baseUrl}       https://demo.automationtesting.in/Windows.html

*** Test Cases ***
windows tab Test
    Open Browser    ${baseUrl}    ${appBrowser}
    Set Browser Implicit Wait    10
    Click Element    xpath=//body/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/a[1]/button[1]
    Switch Window    title=Selenium
    Close All Browsers