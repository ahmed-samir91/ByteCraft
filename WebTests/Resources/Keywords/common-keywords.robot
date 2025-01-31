*** Variables   ***
${browser}  chrome

*** Keywords ****
Start Application
    [Arguments]     ${BaseURL}
    Open Browser    ${BaseURL}  ${Browser} 
    maximize browser window
    Sleep       1s

Close Application 
    Close browser