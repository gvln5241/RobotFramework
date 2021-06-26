*** Settings ***
Library    SeleniumLibrary
    

*** Keywords ***
Custom Test SetUp
    Register Keyword To Run On Failure    NONE
    Chrome Options Setting

Custom Test TearDown
    Run Keyword If Test Failed    Capture Page Screenshot    
    Run Keyword If Test Passed    Close All Browsers    
    
Chrome Options Setting
    [Documentation]    In this keyword chrome can be configured as per our need.
    ...    https://peter.sh/experiments/chromium-command-line-switches/
    Log To Console    Chrome configuration started
    
    ${chrome_options} =    Evaluate    selenium.webdriver.ChromeOptions()
    
    Call Method    ${chrome_options}    add_argument    --log-level\=3
    Call Method    ${chrome_options}    add_argument    --lang\=en-us
    #Call Method    ${chrome_options}    add_argument    --start-maximized
    Call Method    ${chrome_options}    add_argument    --window-size\=800,800
    #Call Method    ${chrome_options}    add_argument    --disable-infobars
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --incognito
    
    #Call Method    ${chrome_options}    add_argument    --headless
    
    Create WebDriver    Chrome    chrome_options=${chrome_options}     
    
    Log To Console    Chrome configuration completed