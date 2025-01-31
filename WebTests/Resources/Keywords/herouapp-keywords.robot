*** Settings ***
Resource        ../Pages/herouapp-dynamicloading.robot
Resource        ../Pages/herouapp-dynamicloadingexample2.robot
Resource        ../Pages/herouapp-uploadfile.robot
Resource        ../Pages/herouapp-homepage.robot


*** Keywords *** 
Upload a file
    [Arguments]     ${FilePath}
    Click Element   ${FileUpload}
    Sleep   1s
    Choose File     ${ChooseFile}     ${FilePath}
    Click Element   ${Uploadbutton}
    Sleep   1s

Choose dynamic loading example 2
    Click Element   ${DynamicLoading}
    Sleep   1s
    Click Element  ${Example2}
    Sleep   1s
    Click Element    ${StartButton}
