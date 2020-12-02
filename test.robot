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
