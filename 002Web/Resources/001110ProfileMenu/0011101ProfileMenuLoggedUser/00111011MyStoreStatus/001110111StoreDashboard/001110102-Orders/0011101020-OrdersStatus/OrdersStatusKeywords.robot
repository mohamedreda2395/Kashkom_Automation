*** Settings ***
Resource           ../../../../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ../../../../../0011101ProfileMenuLoggedUser/00111014-MyOrders/001110140-OrderDetails/OrderDetailsKeywords.robot
Resource    ./OrdersStatusAssertion.robot
Resource    ./OrdersStatusLocators.robot
Resource    ../../../../../../00119-Cart/CartKeywords.robot
*** Keywords ***
Verify That Order Status Page Is Successfully Appear
    wait until page contains                ${ORDER_STATUS_CANCEL_ORDER_TEXT}
     CartKeywords.Verify That Product Name Is Successfully Appear
     CartKeywords.Verify That Product Price Is Successfully Appear
    WAIT UNTIL ELEMENT IS ENABLED           ${ORDER_STATUS_OUT_OF_STOCK_TEXT_BUTTON}
    wait until page contains                ${ORDER_STATUS_SUBTOTAL_TEXT_APPEAR}
    wait until page contains                ${ORDER_STATUS_SHIPPING_FEES_TEXT_APPEAR}
    wait until page contains                ${ORDER_STATUS_CASH_ON_DELIVERY_TEXT_APPEAR}
    wait until page contains                ${ORDER_STATUS_TOTAL_PRICE_TEXT_APPEAR}

Click on Update Status Button
    wait until element is enabled    ${ORDER_STATUS_UPDATE_STATUS_BUTTON}
    Run Keyword until Success    seleniumlibrary.click element   ${ORDER_STATUS_UPDATE_STATUS_BUTTON}

Verify That Assign To Delivery Man Status Is Suceesfully Appear
    wait until page contains    ${ORDER_STATUS_ASSIGN_TO_DELIVERY_MAN_TEXT_APPEAR}

Click on Submit Button
    Run Keyword until Success    seleniumlibrary.click element   ${ORDER_STATUS_SUBMIT_BUTTON}


Verify That Out Of Delivery Status Is Suceesfully Appear
        wait until page contains    ${ORDER_STATUS_OUT_OF_DELIVERY_DELIVERY_MAN_TEXT_APPEAR}



Verify That Delivered Status Is Suceesfully Appear
        wait until page contains   ${ORDER_STATUS_DELIVERED_MAN_TEXT_APPEAR}

