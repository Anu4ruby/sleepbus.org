*** Settings ***
Resource          sleepbus-resources.robot

*** Test Cases ***
Scenario: Signup
    ${random_string}=    Evaluate    random.randint(0, sys.maxint)    modules=random, sys
    Given Open Browser To Home Page
    And Home Page Should Be Open
    And Navigate To Sign Up Page
    When Input Signup    test    ${random_string}@example.com    Test1234    Individual    True
    Then User Home Page Should Be Open
    [Teardown]    Close Browser
