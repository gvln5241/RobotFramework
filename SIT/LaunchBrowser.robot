*** Settings ***
Library    SeleniumLibrary

Test Setup    Custom Test SetUp
Test Teardown    Custom Test TearDown    

*** Keywords ***
Custom Test SetUp
    Register Keyword To Run On Failure    NONE

Custom Test TearDown
    Run Keyword If Test Failed    Capture Page Screenshot    
    Run Keyword If Test Passed    Close All Browsers    
    
temp
    log    log

*** Test Cases ***
Launch Chrome Browser
    Open Browser    http://google.com    chrome
    Log To Console    chrome browser opened    
        