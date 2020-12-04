*** Settings ***
Library           SeleniumLibrary
Library           ./MyLibrary.py

*** Variables ***
${URL}            https://www.baidu.com
${BROWSER}        Chrome

*** Test Cases ***
case1
    Open Browser    ${URL}    ${BROWSER}
    ${title}    Baidu Search    selenium
    should contain    ${title}    selenium
    close browser

case2
    ${result}    My keyword    a test
    log    ${result}

*** Keywords ***
Baidu Search
    [Arguments]    ${searchkeys}
    Input text    id:kw    ${searchkeys}
    click button    id:su
    Sleep    2
    ${title}    Get title
    [Return]    ${title}
