*** Settings ***
Resource           ../../../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./OrdersAssertion.robot
Resource    ./OrdersLocators.robot
Resource    ././0011101020-OrdersStatus/OrdersStatusKeywords.robot

*** Keywords ***
Verify That Order Page Is Successfully Opened
    wait until element is visible    ${ORDERS_LIST_SERIAL_ELEMENT_APPEAR}
    wait until element is visible    ${ORDERS_LIST_PLACED_STATUS_ELEMENT_APPEAR}

Click on Order View Icon
    Run Keyword until Success    seleniumlibrary.click element                    ${ORDERS_LIST_ORDER_VIEW_ICON}

Verify That User Could Suucssfully Navigate To Order Status Page
    Click on Order View Icon
    Verify That Order Status Page Is Successfully Appear

