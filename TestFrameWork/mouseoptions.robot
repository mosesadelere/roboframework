*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MouseOps
    # Right click operation
    Open Browser    https://testautomationpractice.blogspot.com    chrome
    Maximize Browser Window
    Open Context Menu    xpath://button[contains(text(),'Copy Text')]
    Sleep    5

    # Double click operation
    Go To    https://testautomationpractice.blogspot.com
    Maximize Browser Window
    Double Click Element    xpath://button[contains(text(),'Copy Text')]
    Sleep    5

    # Drag and drop operation
    Go To    http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Maximize Browser Window
    Drag And Drop    id:box2    id:box102
    Sleep    5
