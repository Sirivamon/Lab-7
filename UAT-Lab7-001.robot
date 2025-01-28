*** Settings ***
Documentation     A test suite with a single test for valid form.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Variables ***
${BROWSER}                chrome
${CHROME_BROWSER_PATH}    ${EXECDIR}${/}ChromeForTesting${/}chrome.exe
${CHROME_DRIVER_PATH}    ${EXECDIR}${/}ChromeForTesting${/}chromedriver.exe

*** Test Cases ***
Go To Form Page
    Open Browser To Form Page
    
Complete Form
    Open Browser To Form Page
    Input Firstname    Somsong
    Input Lastname    Sandee
    Input Destination    Europe
    Input Contactperson    Sodsai Sandee
    Input Relationship    Mother
    Input Email    somsong@kkumail.com
    Input Phone    081-111-1234
    Submit Credentials
    Complete Page Should Be Open
    [Teardown]    Close Browser
