*** Settings ***
Resource           ../../../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./ReturnAssertions.robot
Resource    ./ReturnLocators.robot
Resource    ../../../../../00119-Cart/CartKeywords.robot
Resource    ../../../00111015-MyReturns/MyReturnsKeywords.robot

*** Keywords ***
Verify That Return Page is Successfully Loaded
    wait until page contains    ${RETURN_RETURN_ORDER_TEXT}
    Verify Product Name and Price Is Successfully Appear

Click on Confirm Return
    scroll element into view    ${RETURN_CONFIRM_BUTTON}
    Run Keyword until Success    seleniumlibrary.click element               ${RETURN_CONFIRM_BUTTON}
    Verify That My Returns Page Is Successfully Opened