*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}    https://demo.nopcommerce.com
${browserApp}    chrome
${email}    pavonltraining@gmail.com
${password}    Test@123

*** Test Cases ***
logintest
    Open Browser    ${url}   ${browserApp}
    LoginToApp
    Close Browser


*** Keywords ***
LoginToApp
    Click Link    xpath://a[contains(text(),'Log in')]
    Input Text    xpath://input[@id='Email']    ${email}
    Input Password    id:Password    ${password}
    Click Element    xpath://button[contains(text(),'Log in')]