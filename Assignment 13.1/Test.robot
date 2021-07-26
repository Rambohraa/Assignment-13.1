*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SEARCH_URL}   https://www.flipkart.com/
${BROWSER}      Chrome
${LINK1}        https://www.flipkart.com/viewcart?otracker=PP_GoToCart



*** Test Cases ***
Login page
    Open Browser to Login Page
    Input Username  8619769197
    Input Password  Ram@123
    Submit Credentials


*** Keywords ***
Open Browser to Login Page
    Open Browser  ${SEARCH_URL} ${BROWSER}

Input Username
    [Arguments] ${Username}
    Input Text  xpath ://input[@class='_2IX_2- VJZDxU'] ${username}
Input Password
    [Arguments] ${password}
    Input Text  xpath ://input[@type='password'] ${password}
Submit Credentials
    sleep 1s
    Click Element   x:path//button[@class='_2KpZ6l _2HKlqd _3AWRsL']

Go to Electronics 
    sleep 1s
    Click Element xpath ://img[@alt='SAMSUNG Galaxy A22 (Black, 128 GB)']

Change Page
    sleep 1s
    Switch Window NEW
    Click Element xpath ://button[@class='_2KpZ6l _2U9uOA _3v1-ww']

Check URL
    sleep  1s
    Location Should Contain ${link 1}

Close Browser
    sleep 1s
    [TEARDOWN] Close Browser
