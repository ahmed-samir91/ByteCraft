*** Settings ***
Library         SeleniumLibrary
Resource        ../Keywords/common-keywords.robot
Resource        ../Keywords/herouapp-keywords.robot

*** Variables ***
${BaseURL}      https://the-internet.herokuapp.com/
${browser}  chrome
${FilePath}     D:/ByteCraft/WebTests/Files/scrum-events.png

*** Test Cases ****
Upload a file and ensure it is uploaded successfully 
    Start Application   ${BaseURL}
    Upload a file   ${FilePath}
    Page Should Contain     File Uploaded!
    Page Should Contain     scrum-events.png
    Close Application 

Choose dynamic loading and ensure text "Hello World!" is displayed
    Start Application   ${BaseURL}
    Choose dynamic loading example 2
    Wait Until Page Contains    Hello World!    
    Close Application
