*** Settings ***
Library     SeleniumLibrary
Resource    ../../00111011110-ReturnOrders/ReturnOrdersKeywords.robot
Resource    ../../001110102-Orders/0011101020-OrdersStatus/OrdersStatusKeywords.robot
Resource    ../001110111100-ReturnOrdersStatus/ReturnOrdersStatusKeywords.robot
*** Keywords ***
Update Return Order Status To Delivered Status
        ReturnOrdersKeywords.Verify That Return Orders Page Is Successfully Opened
        OrdersStatusKeywords.Click on Update Status Button
        OrdersStatusKeywords.Click on Submit Button
        OrdersStatusKeywords.Click on Update Status Button
        ReturnOrdersStatusKeywords.Verify That Poupup Of Selection Between Approave and Reject Return Is Successfully Appear
        ReturnOrdersStatusKeywords.Select Return Approaved
        OrdersStatusKeywords.Click on Submit Button
        OrdersStatusKeywords.Click on Update Status Button
        ReturnOrdersStatusKeywords.Verification of Return Orders Return Approved Status
        wait until page contains    ${RETURN_ORDERS_STATU_RETURN_APPROVED_TEXT_APPEAR}
        OrdersStatusKeywords.Click on Submit Button
        ReturnOrdersStatusKeywords.Verification of Return Orders Return Approved Status
        wait until page contains    ${RETURN_ORDERS_STATU_RETURNED_TO_STORE_TEXT_APPEAR}

