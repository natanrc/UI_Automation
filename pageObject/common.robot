*** Settings ***
Library                 SeleniumLibrary

*** Variables ***
${browser}          firefox
${url}              https://www.service.nsw.gov.au/
${url1}             https://www.service.nsw.gov.au/service-centre


*** Keywords ***
Start TestCase
        Open Browser                    ${url}             ${browser}
        Maximize Browser Window             

Start TestCase two
        Open Browser                  ${url1}             ${browser}
        Maximize Browser Window  

Finish TestCase
        Close Browser