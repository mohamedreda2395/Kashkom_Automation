*** Settings ***
Library     SeleniumLibrary
Library    Collections

#Resource    002Web/Resources/003-SignUP-IN/LoginPage.robot

*** Variables ***
${cookie1_dict}
${cookie2_dict}

*** Test Cases ***
AI AI AI AI
    [Tags]    regre
    open browser    https://test.kashkom.com     chrome
    maximize browser window
    #Eyes Check Window   Login Page
    sleep    2s
    click element    xpath://*[@id="users-suggestions-modal"]/div/div/div[1]/button/i
    sleep    2s


login now2
    [Tags]    reg
    open browser    https://test.kashkom.com     chrome
    maximize browser window
    #execute javascript    document.body.style.zoom='80%'
    set selenium speed    0.3s
    sleep    1s
    click element    xpath://*[@id="users-suggestions-modal"]/div/div/div[1]/button/i
    click element    xpath://*[@id="top-header-v2"]/div/div/div[3]/a[2]
    input text    xpath://input[@name="mobile"]     77778888
    click element    xpath://*[@id="auth-modal"]/div/div/div/div/form/div[2]/button
    input text    xpath://*[@id="auth-pin-form"]/div/div[1]/input[1]    1
    input text    xpath://*[@id="auth-pin-form"]/div/div[1]/input[2]    2
    input text    xpath://*[@id="auth-pin-form"]/div/div[1]/input[3]    3
    input text    xpath://*[@id="auth-pin-form"]/div/div[1]/input[4]    4
    input text    xpath://*[@id="auth-pin-form"]/div/div[1]/input[5]    5
    input text    xpath://*[@id="auth-pin-form"]/div/div[1]/input[6]    6
    sleep    3s
    click element    xpath://*[@id="auth-modal"]/div/div/div/div/form/div[2]/div/a[2]
    #click element    xpath://*[@id="users-suggestions-modal"]/div/div/div[1]/button/i
    click element    xpath://*[@id="top-header-v2"]/div/div/div[3]/a[1]

    ${Cookies1}=     get cookie      XSRF-TOKEN
    ${cookie1_dict}=    Create Dictionary
    ...    name=${Cookies1.name}
    ...    value=${Cookies1.value}
    ...    domain=${Cookies1.domain}
    ...    path=${Cookies1.path}
    ...    secure=${Cookies1.secure}
    ...    expiry=${Cookies1.expiry}
    set global variable    ${cookie1_dict}

    ${Cookies2}=     get cookie      kashkom_session
    ${cookie2_dict}=    Create Dictionary
    ...    name=${Cookies2.name}
    ...    value=${Cookies2.value}
    ...    domain=${Cookies2.domain}
    ...    path=${Cookies2.path}
    ...    secure=${Cookies2.secure}
    ...    expiry=${Cookies2.expiry}
    set global variable    ${cookie2_dict}

    delete all cookies
    go to    https://test.kashkom.com
    sleep    10s

    Add Cookie
    ...    name=${Cookies1.name}
    ...    value=${Cookies1.value}
    ...    domain=${Cookies1.domain}
    ...    path=${Cookies1.path}
    ...    secure=${Cookies1.secure}
    ...    expiry=${Cookies1.expiry}

    add cookie
    ...    name=${Cookies2.name}
    ...    value=${Cookies2.value}
    ...    domain=${Cookies2.domain}
    ...    path=${Cookies2.path}
    ...    secure=${Cookies2.secure}
    ...    expiry=${Cookies2.expiry}

    sleep    2s
    go to    https://test.kashkom.com
    sleep    5s
    close browser

open kashkom again
    [Tags]    reg
    open browser    https://test.kashkom.com     chrome
    sleep    5s
    Add Cookie
    ...    name=${cookie1_dict['name']}
    ...    value=${cookie1_dict['value']}
    ...    domain=${cookie1_dict['domain']}
    ...    path=${cookie1_dict['path']}
    ...    secure=${cookie1_dict['secure']}
    ...    expiry=${cookie1_dict['expiry']}

    add cookie
    ...    name=${cookie2_dict['name']}
    ...    value=${cookie2_dict['value']}
    ...    domain=${cookie2_dict['domain']}
    ...    path=${cookie2_dict['path']}
    ...    secure=${cookie2_dict['secure']}
    ...    expiry=${cookie2_dict['expiry']}

    sleep    3s
    reload page
    sleep    5s


login with valid number
    Login    45645645
    assert otp dialogue opened successfully

login with invalid number
    LoginPage.Login    77777777
    assert invalid number validation appear

login with new number
    LoginPage.Login    00226548
    assert open create new account dialogue




