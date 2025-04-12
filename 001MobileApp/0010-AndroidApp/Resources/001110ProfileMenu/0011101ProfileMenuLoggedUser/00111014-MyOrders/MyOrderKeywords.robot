*** Settings ***
Resource           ../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./MyOrderAssertions.robot
Resource    ./MyOrderLocators.robot
Resource    ../../../00119-Cart/CartKeywords.robot

*** Keywords ***
Verify That My Order Page Is Successfully Appear
    wait until page contains       ${MY_ORDERS_TEXT_APPEAR}
    wait until page contains       ${MY_ORDERS_PLACED_TEXT_APPEAR}
    Verify Product Name and Price Is Successfully Appear

Click on Details Button
    Run Keyword until Success    seleniumlibrary.click element                  ${MY_ORDERS_DETAILS_BUTTON}

Click on Track Order Button
    Run Keyword until Success    seleniumlibrary.click element                  ${MY_ORDERS_ORDER_TRACK_BUTTON}

Click on Return Button
    Run Keyword until Success    seleniumlibrary.click element    ${MY_ORDERS_RETURN_BUTTON}
