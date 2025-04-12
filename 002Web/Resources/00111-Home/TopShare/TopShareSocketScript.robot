*** Settings ***
Library     SeleniumLibrary
Library           DataDriver        file=newposts.csv

Test Template     Login and view post

*** Variables ***
${url}      https://test.kashkom.com/
${browser}  chrome
#${mobil}    22223333
#${posturl}     https://test.kashkom.com/posts?code=7ac0ea26-d677-4b4b-9573-3196802abc67&slug=b
${editprofillink}    xpath://*[@id="auth-modal"]/div/div/div/div/form/div[2]/div/a[1]
${otpfirstcharacter}        xpath://*[@id="auth-pin-form"]/div/div[1]/input[1]
${clocesuggestionbutton}      xpath://*[@id="users-suggestions-modal"]/div/div/div[1]/button
${name}    xpath://*[@id="auth-modal"]/div/div/div/div/div[2]/form/div[2]/input
${loginbutton}   xpath://*[@id="auth-modal"]/div/div/div/div/form/div[2]/button
${registerbutton}   xpath://*[@id="auth-modal"]/div/div/div/div/div[2]/form/button
${mobilnumberlocator}  name:mobile
${loginbuttonfromhader}      xpath://*[@id="top-header-v2"]/div/div/div[3]/a[2]


*** Test Cases ***

testing view posts using   ${mobil}    ${posturl}


*** Keywords ***

close subbeses popup
    wait until element is enabled       ${clocesuggestionbutton}
    sleep    2s
    click button   ${clocesuggestionbutton}

Login and view post
    [Arguments]    ${mobil}    ${posturl}
    open browser    ${url}    ${browser}
    maximize browser window
    set selenium speed    0.2s
    close subbeses popup
#Sign up
    click link      ${loginbuttonfromhader}
    input text      ${mobilnumberlocator}      ${mobil}
    click button    ${loginbutton}
    wait until element is enabled    ${name}
    input text      ${name}    abbas1
    click button    ${registerbutton}

#insert otp
    wait until element is enabled    ${otpfirstcharacter}
    sleep    1s
    input text    ${otpfirstcharacter}      1
    input text    xpath://*[@id="auth-pin-form"]/div/div[1]/input[2]    2
    input text    xpath://*[@id="auth-pin-form"]/div/div[1]/input[3]    3
    input text    xpath://*[@id="auth-pin-form"]/div/div[1]/input[4]    4
    input text    xpath://*[@id="auth-pin-form"]/div/div[1]/input[5]    5
    input text    xpath://*[@id="auth-pin-form"]/div/div[1]/input[6]    6
    wait until element is enabled    ${editprofillink}
    click link      ${editprofillink}

#go to shared post by link
    go to    ${posturl}
    run keyword and ignore error        close subbeses popup
    sleep    7s
    close browser




