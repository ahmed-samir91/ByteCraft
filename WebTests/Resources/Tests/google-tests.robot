*** Settings ***
Library         SeleniumLibrary
Resource        ../Keywords/common-keywords.robot
Resource        ../Keywords/google-keywords.robot

*** Variables ***
${BaseURL}      https://www.google.com/ncr
${browser}  chrome


*** Test Cases ***
# Issue: This test case is failing because the URL "https://www.google.com/ncr" is returning a "Not Found" response. Google is automatically redirecting to "https://www.google.com", which triggers a detection mechanism for unusual traffic, causing the test case to fail
Ensure that page contains "What is Selenium Webdriver"
    Start Application   ${BaseURL}
    Search and press ENTER      Selenium webdriver  
    Page Should Contain     What is Selenium Webdriver
    Close Application 