*** Settings ***
Library    SeleniumLibrary
Resource    SetUP.resource

Test Setup    Custom Test SetUp
Test Teardown    Custom Test TearDown    

*** Test Cases ***
Launch Chrome Browser
    #Open Browser    http://google.com    chrome
    Go To    http://google.com    
    Log To Console    chrome browser opened    
        