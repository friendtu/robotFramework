*** Setting ***
Documentation     Simple example using robot Framework.
Library           SeleniumLibrary

*** Test Cases ***
test case1
    log    welcome robot framework
    log    python

test case2
    ${a}    Set variable    python
    log    ${a}

test case3
    ${hi}    Catenate    hello    world
    log    ${hi}

test case4
    ${hi}    Catenate    SEPARATOR=---    hello    world
    log    ${hi}

test case5
    @{abc}    Create List    a1    b    c
    log many    @{abc}
    FOR    ${i}    IN    @{abc}
        log    ${i}
    END

test case6
    ${t}    get time
    sleep    5
    ${t}    get time

test case8
    ${a}    Set variable    70
    run keyword if    ${a}>=90    log    excellent
    ...    ELSE IF    ${a}>=70    log    good
    ...    ELSE IF    ${a}>=60    log    ok
    ...    ELSE    log    not good

test case9
    FOR    ${i}    IN RANGE    10
        log    ${i}
    END
    ${d}    Evaluate    random.randint(1000,9999)    random
    log    ${d}
    Import Library    c:/users/tud/GitHub/robotframework/count.py
    ${a}    Evaluate    int(4)
    ${b}    Evaluate    int(5)
    ${add}    add    ${a}    ${b}
    log    ${add}

test case10
    Set Test Documentation    Simple example using SeleniumLibrary.
    Open Browser    https://www.baidu.com
    Input text    css:#kw    robot framework
    ${element}    Get WebElement    id:su
    click button    ${element}
    Wait For Condition    return document.title.indexOf("robot framework")>=0
    ${title}    Get Title
    should contain    ${title}    robot framework
    close Browser

test case11
    Set Test Documentation    login 126 mail
    Open Browser    http://www.126.com    chrome
    Select Frame    name:
    Input TEXT    name:email    friendtu
    Input TEXT    name:password    ***
    Click Element    id:dologin
    unselect Frame
    close Browser
