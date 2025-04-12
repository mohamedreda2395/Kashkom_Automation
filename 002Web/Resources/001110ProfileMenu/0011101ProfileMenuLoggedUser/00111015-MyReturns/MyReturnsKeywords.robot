*** Settings ***
Resource           ../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ../../../00119-Cart/CartKeywords.robot
Resource    ./MyReturnsAssertions.robot
Resource    ./MyReturnsLocators.robot


*** Keywords ***
Verify That My Returns Page Is Successfully Opened
    wait until page contains    ${MY_RETURNS_TEXT_APPEAR}
    Verify Product Name and Price Is Successfully Appear

Verify That Returned To Store Status Is Successfully Appear
    wait until page contains    ${MY_RETURNS_RETURNED_TO_STORE_TEXT_APPEAR}

Verify That Placed on Text Is Successfully Appear
    wait until page contains    ${MY_RETURNS_PLACED_ON_TEXT_APPEAR}

Verify That Returned at Text Is Successfully Appear
    wait until page contains    ${MY_RETURNS_RETURNED_AT_TEXT_APPEAR}

Verify That Return amount Text Is Successfully Appear
    wait until page contains     ${MY_RETURNS_RETURNED_AMOUNT_TEXT_APPEAR}

Click on Details Button
    Run Keyword until Success    seleniumlibrary.click element               ${MY_RETURNS_DETAILS_BUTTON}



