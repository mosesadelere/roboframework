*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
NavigationTest
    Open Browser    https://google.com    chrome
    Set Browser Implicit Wait    3
    ${loc}=    Get Location
    Log To Console    ${loc}

    Go To    https://bbc.co.uk
    ${loc}=    Get Location
    Log To Console    ${loc}

    Go Back
    ${loc}=    Get Location
    Log To Console    ${loc}

    Close Browser