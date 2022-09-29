*** Settings ***
Library                 SeleniumLibrary
Resource                ../pageObject/common.robot
Library                 DataDriver                               ../TestData/serviceLoc.csv                     sheet_name=Sheet1
Variables               ../resource/findlocators.yaml

Suite Setup             common.Start TestCase two
Suite Teardown          common.Finish TestCase
Test Template           Perform with Input keyword to find location

*** Keywords ***
Perform with Input keyword to find location
    [Arguments]                         ${location}                 ${servicelocation}

    Input Text                          ${txt_search}               ${location} 
    sleep           2s 
    Textfield Value Should Be           ${txt_search}               ${location} 
    Click Element                       ${btn_find}
    sleep           2s
    Element Should Contain              ${txt_contain}              ${servicelocation}

*** Test Cases ***
Enter Suburb                                ${location}                      ${servicelocation}
    [Documentation]                     User should be able to open find location page
    [Tags]                              Suburb

    Wait Until Element Is Visible               ${servicelocation}  


            
    

    