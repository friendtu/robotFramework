*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://www.baidu.com
${BROWSER}        Chrome

*** Test Cases ***
case1
    Open Browser    ${URL}    ${BROWSER}
    ${title}    Baidu Search    selenium
    should contain    ${title}    selenium
    close browser

*** Keywords ***
Baidu Search
    [Arguments] ${search_keys}
    Input text    id:kw    ${search_key}
    click button    id:su
    Sleep    2
    ${title}    Get title
    [Return]    ${title}
