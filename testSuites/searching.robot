*** Settings ***
Library             SeleniumLibrary
Resource            ../pageObject/common.robot
Variables           ../resource/searchLocators.yaml
Resource            ../pageObject/searchperform.robot

Suite Setup             common.Start TestCase
Suite Teardown          common.Finish TestCase

*** Test Cases ***
Perform Searching Page
    [Documentation]                     User should be able to navigation appropriate page
    [Tags]                              Searching

    Maximize Browser Window
    Perform Search
    Click Element                       ${btn_search}
    Validate the navigation to appropriate page

    
