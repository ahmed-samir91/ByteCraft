*** Settings ***
Library         SeleniumLibrary
Resource        ../Keywords/common-keywords.robot
Resource        ../Keywords/google-keywords.robot

*** Variables ***
${BaseURL}      https://www.google.com/ncr
${browser}  chrome


*** Test Cases ***
Ensure that page contains "What is Selenium Webdriver"
    Start Application   ${BaseURL}
    Search and press ENTER      Selenium webdriver  
    Page Should Contain     What is Selenium Webdriver
    Close Application 