*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
Launch Chrome Browser
    Open Browser    http://google.com    chrome
    Log To Console    chrome browser opened    