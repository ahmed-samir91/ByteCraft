*** Settings ***
Library    RequestsLibrary
Resource    ../Keywords/Keywords.robot

*** Variables ***
${BASE_URL}    https://cat-fact.herokuapp.com
${Cat_Fact_Endpoint}   /facts 


*** Test Cases ***
Test the endpoint that returns a random cat fact
    ${ResponseData}=    run keyword    Create session and go to endpoint   ${BASE_URL}   ${Cat_Fact_Endpoint}
    Ensure text is not Empty   ${ResponseData}