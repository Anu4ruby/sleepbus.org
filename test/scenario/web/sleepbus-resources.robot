*** Settings ***
Resource          resource.robot

*** Variables ***
${BASE}       %{BASE_URL}

*** Keywords ***
Prepare Scenario
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Open Browser To Home Page
    Open Browser    ${BASE}    ${BROWSER}
    Prepare Scenario
    Home Page Should Be Open

Navigate To Sign Up Page
    Go To    ${BASE}/signup

Home Page Should Be Open
    Title Should Be    Home - Sleepbus

User Home Page Should Be Open
    Title Should Be    Welcome to Sleepbus - Sleepbus
    
Input Signup
    [Arguments]    ${name}    ${email}    ${password}    ${accountType}    ${keepUpdated}
    Input Into Text Field    xpath=//input[@id='full_name']    ${name}
    Input Into Text Field    xpath=//input[@id='email']    ${email}
    Input Into Text Field    xpath=//input[@id='password']    ${password}
    Click Element    xpath=//select[@id='account_type']
    Click Element    xpath=//select[@id='account_type']/option[contains(text(), '${accountType}')]
    Run Keyword If    "${keepUpdated}" == "True"    Subscribe To Newsletter
    Click Element    xpath=//input[@id='submit_value']

Subscribe To Newsletter
    Click Element    xpath=//label[contains(text(), 'Keep me updated on email')]
