*** Settings ***
Resource          ../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library    SeleniumLibrary
Resource    ./OtpPageLocators.robot
Resource    ./OtpPageAssertions.robot

*** Keywords ***
Verify OTP Page Is Opened Successfully
        wait until page contains    ${OTP_PAGE_HEADER}

Skip OTP Page
    Run Keyword until Success    seleniumlibrary.click element    ${SKIP_BTN_FOR_OTP}

Verify OTP Page Is Skipped Successfully
        wait until page does not contain    ${OTP_PAGE_HEADER}