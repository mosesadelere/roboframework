*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
multipleBrowserTest
    Open Browser    https://google.com    chrome
    Maximize Browser Window

    Sleep    5

    Open Browser    https://bing.com    chrome
    Maximize Browser Window
    #Set Browser Implicit Wait    10

    Switch Browser    1
    ${title1}=    Get Title
    Log To Console    ${title1}

    Switch Browser    2
    ${title2}=    Get Title
    Log To Console    ${title2}

    Sleep    5

    Close All Browsers