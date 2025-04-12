*** Settings ***
Resource           ../../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./OrderDetailsAssertions.robot
Resource    ../../../../00119-Cart/CartKeywords.robot
*** Keywords ***
Verify That Order Dertails Page Is Successfully Opened
    wait until page contains            ${ORDER_DETAILS_TEXT_APPEAR}
     Verify That Product Name Is Successfully Appear


Verify That Product Is Paid With COD Payment Method
    wait until page contains            ${ORDER_DETAILS_CASH_ON_DELIVERY_TEXT_APPEAR}


Verify That Shipping Fees Text Is Successfully Appear
        wait until page contains        ${ORDER_DETAILS_SHIPPING_FEES_TEXT_APPEAR}

Verify That Sub Price Text Is Successfully Appear
    wait until page contains            ${ORDER_DETAILS_SUBTOTAL_TEXT_APPEAR}

Verify That Total Price Text Is Successfully Appear
    wait until page contains            ${ORDER_DETAILS_TOTAL_PRICE_TEXT_APPEAR}
