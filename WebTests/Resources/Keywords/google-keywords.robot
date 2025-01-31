*** Settings ***
Resource        ../Pages/google-page.robot


*** Keywords *** 
Search and press ENTER
    [Arguments]   ${Search_for}
    Input Text  ${SearchBox}    ${Search_for}
    Sleep   3s
    Press Keys    ${None}    ENTER