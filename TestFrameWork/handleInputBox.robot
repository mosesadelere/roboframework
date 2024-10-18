*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}        https://demo.nopcommerce.com



*** Test Cases ***
TestInputBox
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store
    Click Link    link:Log in
    ${"email"}    Set Variable    name:Email

    Element Should Be Visible    ${"email"}
    Element Should Be Enabled    ${"email"}

    Input Text    ${"email"}    pavonltraining@gmail.com
    Sleep    5
    Clear Element Text    ${"email"}
    Sleep    3
    Close Browser

*** Keywords ***