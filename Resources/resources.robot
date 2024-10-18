*** Settings ***
Documentation        It all started here
Library    SeleniumLibrary



*** Keywords ***

LaunchBrowser
    [Documentation]    This will launch a browser
    [Arguments]    ${appurl}    ${appBrowser}
    Open Browser    ${appurl}    ${appBrowser}
    Maximize Browser Window
    ${title}=    Get Title
    [Return]    ${title}
