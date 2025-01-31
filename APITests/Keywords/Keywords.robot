*** Keywords ***
Create session and go to endpoint
    [Arguments]     ${BASE_URL}     ${Cat_Fact_Endpoint}
    Create Session   cat_fact    ${BASE_URL}
    ${response}=    GET On Session   cat_fact   ${Cat_Fact_Endpoint}
    &{ResponseData} =  create dictionary    Body=${response.json()}      StatusCode=${response.status_code}
    log  ${ResponseData}
    [Return]   ${ResponseData}

Ensure text is not Empty
    [Arguments]     ${ResponseData}
    Should Be Equal As Numbers    ${ResponseData.StatusCode}    200
    Should Not Be Empty      ${ResponseData}.['text']