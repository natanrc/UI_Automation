*** Settings ***
Library                 SeleniumLibrary

*** Keywords ***
Perform Search
    Input Text                          ${txt_search}               Apply for a number plate

Validate the navigation to appropriate page
    Element Should Be Visible              ${page_title}
