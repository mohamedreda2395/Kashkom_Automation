*** Settings ***
Library     SeleniumLibrary
Resource    ./LoginAssertions.robot
Resource    ./LoginVariabels.robot
Resource    ./LoginLocators.robot

*** Keywords ***
close suggestions dialogue
    run keyword until success    seleniumlibrary.click button    ${LOGIN_CLOESE_SUGGESTIONS_DIALOGUE_BUTTON}

check user can login with facebook
    run keyword until success    seleniumlibrary.click button    ${LOGIN_WITH_FACEBOOK_BUTTON}

check user can login with facebook
    run keyword until success    seleniumlibrary.click button    ${LOGIN_WITH_GOOGLE_BUTTON}

Handle Suggestions Dialogue If Present
    ${test}=    run keyword and return status       assert Suggestions Dialogue appear
    run keyword if      '${test}' != 'PASS'   close suggestions dialogue

return itemcount keyword
    ${itemcount}=     get text    xpath:fffff
    [Return]    ${itemcount}

add item to cart and validate itemcount increased successfully
        ${before}=  return itemcount keyword
        #add item to cart
        ${After}=  return itemcount keyword
        ${After}=  ${before} + 1

Open Login Dialogue
    run keyword until success    seleniumlibrary.click element    ${LOGIN_BUTTON}

Assert Login Dialogue Opened Successfully
        Run Keyword until Success   seleniumLibrary.WAIT UNTIL PAGE CONTAINS                  ${HEADER_LOGIN_DIALOG_TEXT}

Insert Mobile Number
        [Arguments]         ${mobile_num}
        Run Keyword until Success    SeleniumLibrary.input text            ${LOGIN_NUMBER}            ${mobile_num}

Submit Login
    Run Keyword until Success    seleniumlibrary.click element         ${LOGIN_CONTINUE_BUTTON}

Assert OTP dialogue Opened Successfully
        run keyword until success    seleniumlibrary.WAIT UNTIL PAGE CONTAINS                  ${HEADER_OTP_DIALOG_TEXT}

Assert open create new account dialogue
    run keyword until success    wait until page contains       ${HEADER_CREATE_NEW_ACCOUNT_TEXT}

Assert invalid number validation appear
    run keyword until success    wait until page contains       ${VALIDATION_INVALID_NUMBER_TEXT}

# todo
Insert OTP
    [Arguments]    ${OTP_1}     ${OTP_2}    ${OTP_3}    ${OTP_4}    ${OTP_5}    ${OTP_6}
    run keyword until success    seleniumlibrary.input text    ${LOGIN_OTP_1_NUMBER}       ${OTP_1}
    run keyword until success    seleniumlibrary.input text    ${LOGIN_OTP_2_NUMBER}       ${OTP_2}
    run keyword until success    seleniumlibrary.input text    ${LOGIN_OTP_3_NUMBER}       ${OTP_3}
    run keyword until success    seleniumlibrary.input text    ${LOGIN_OTP_4_NUMBER}       ${OTP_4}
    run keyword until success    seleniumlibrary.input text    ${LOGIN_OTP_5_NUMBER}       ${OTP_5}
    run keyword until success    seleniumlibrary.input text    ${LOGIN_OTP_6_NUMBER}       ${OTP_6}

Validate complete profile popup appear
    seleniumlibrary.wait until page contains    ${HEADER_COMPLETE_PROFILE_DIALOG_TEXT}

Assert invalid otp
    seleniumlibrary.wait until page contains    ${OTP_INVALID_TEXT}

assert Suggestions Dialogue appear
    run keyword until success    seleniumlibrary.wait until page contains    ${HEADER_SUGGESTIONS_DIALOG_TEXT}

assert login suucessfully
    ${test1}=    run keyword and return status       seleniumlibrary.wait until page contains    ${HEADER_COMPLETE_PROFILE_DIALOG_TEXT}
    ${test2}=    run keyword and return status       seleniumlibrary.wait until page contains    ${HEADER_SUGGESTIONS_DIALOG_TEXT}
    ${results}=    Create List    ${test1}    ${test2}
    ${any_passed}=    Evaluate    any(item == 'OK' for item in ${results})
    Run Keyword If    ${any_passed}    log    passed

Asset resend-otp button appear after 2 minutes
        sleep    120s
        SeleniumLibrary.wait until element is visible    ${LOGIN_RESENDOTP_BUTTON}

Resend otp successfully
        Run Keyword until Succe    seleniumlibrary.click element      ${LOGIN_RESENDOTP_BUTTON}
        SeleniumLibrary.wait until element is visible    ${LOGIN_RESENDOTP_TIMER}