*** Settings ***
Library           Selenium2Library

*** Variables ***
${BROWSER}        Firefox
${DELAY}          0

*** Keywords ***
### Generic page controls
Title Should Start With
    [Arguments]    ${expected}
    ${title} =    Get Title
    Should Start With    ${title}    ${expected}
    
Clear Field Of Characters
    [Arguments]    ${field}    ${character count}
    [Documentation]    This keyword pushes the delete key (ascii: \8) a specified number of times in a specified field.
    :FOR    ${index}    IN RANGE    ${character count}
    \    Press Key    ${field}    \\8

Input Into Clear Text Field
    [Arguments]    ${field}    ${text}
    [Documentation]    Keyword is just an input text keyword. That clears the text field dynamically.
    ${field text}=    Get Value    ${field}
    ${field text length}=    Get Length    ${field text}
    Clear Field of Characters    ${field}    ${field text length}
    Press Key    ${field}    ${text}

Input Into Text Field
    [Arguments]    ${field}    ${text}
    [Documentation]    Keyword is just an input text keyword.
    Press Key    ${field}    ${text}
