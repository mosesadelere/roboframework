*** Settings ***
Documentation                    This is some basic info about the suite
Library                          SeleniumLibrary
Suite Setup       Log     Starting a test
Test Setup        Open Browser    ${URL}    ${APPBROWSER}
Test Teardown     Close Browser
Suite Teardown    Log     Cleaning up test data....


*** Variables ***
${URL}=                          https://automationplayground.com/crm
${APPBROWSER}=                    chrome


*** Test Cases ***
Should be able to add new customer
    [Documentation]               This is some basic info about the Test
    [Tags]                        SmokeTest

    Set Selenium Speed            .2
    Set Selenium Timeout          20s

    Log                           Starting Test

    Wait Until Page Contains      Customers Are Priority One!

    Set Window Position            341    169
    Set Window Size                1935    1090

    Click Link                    Sign In
    Wait Until Page Contains      Login

    Input Text                    id:email-id    admin@robotframeworktutorial.com
    Input Text                    id:password    qwe

    Click Element                    id:submit-id
    Wait Until Page Contains      Our Happy Customers

    Click Element                 id:new-customer
    Wait Until Page Contains      Add Customer

    Input Text                    id:EmailAddress    janedoe@gmail.com
    Input Text                    id:FirstName       Jane
    Input Text                    id:LastName        Doe
    Input Text                    id:City            Dallas
    Select From List By Value     id:StateOrRegion    TX
    Select Radio Button           gender    female
    Select Checkbox               name:promos-name

    Click Button                 Submit
    Wait Until Page Contains      Success! New customer add

    Sleep                         3s



