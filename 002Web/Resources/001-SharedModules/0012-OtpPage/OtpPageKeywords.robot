*** Settings ***
Resource          ../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library    SeleniumLibrary
Resource    ./OtpPageLocators.robot
Resource    ./OtpPageAssertions.robot

*** Keywords ***
Verify OTP Page Is Opened Successfully
        wait until page contains    ${OTP_PAGE_HEADER}

Close OTP Page
    Run Keyword until Success    seleniumlibrary.click element    ${CLOSE_BTN_FOR_OTP}

Verify OTP Page Is Skipped Successfully
        wait until page does not contain    ${OTP_PAGE_HEADER}

Insert Valid OTP Code
    Run Keyword until Success    SeleniumLibrary.input text    ${FIRST_CODE_FIELD}    ${NUMBER_ONE}
    Run Keyword until Success    SeleniumLibrary.input text    ${SECOND_CODE_FIELD}    ${NUMBER_ONE}
    Run Keyword until Success    SeleniumLibrary.input text    ${THIRD_CODE_FIELD}    ${NUMBER_ONE}
    Run Keyword until Success    SeleniumLibrary.input text    ${FOURTH_CODE_FIELD}    ${NUMBER_ONE}
    Run Keyword until Success    SeleniumLibrary.input text    ${FIFTH_CODE_FIELD}   ${NUMBER_ONE}
    Run Keyword until Success    SeleniumLibrary.input text    ${SIXTH_CODE_FIELD}    ${NUMBER_ONE}

Verify OTP Inserted Successfully
    SeleniumLibrary.wait until page contains      ${COMPLETE_ACC_DIALOG_HEADER}