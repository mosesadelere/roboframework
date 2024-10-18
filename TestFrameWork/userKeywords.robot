*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot


*** Variables ***
${url}    http://www.newtours.demoaut.com
${browser}    chrome

*** Test Cases ***
TC1
    ${pageTitle}=    LaunchBrowser    ${url}    ${browser}
    Log To Console    ${pageTitle}
    Input Text    name:username    mercury
    Input Password    name:password    mercury


