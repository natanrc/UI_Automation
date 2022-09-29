*** Settings ***
Library                 SeleniumLibrary
Resource                ../resource/common.robot
Library                 DataDriver                               ../resource/serviceLoc.csv                     sheet_name=Sheet1

Suite Setup             common.Start TestCase
Suite Teardown          common.Finish TestCase
Test Template           Input keyword by suburb

*** Keywords ***
Input keyword by suburb
    [Arguments]                         ${username}                 ${password}
    Input Text                          ${txt_search}               ${username} 
    sleep           2s 
    Textfield Value Should Be           ${txt_search}              ${username} 
    Click Element                       ${btn_find}
    Element Should Contain              ${txt_contain}              ${password}
    sleep           2s 

*** Test Cases ***  
verify input                        ${username}                     ${password}