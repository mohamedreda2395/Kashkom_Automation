*** Settings ***
Resource           ../../../../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./ReturnOrdersStatusAssertion.robot
Resource    ./ReturnOrdersStatusLocators.robot
Resource    ../../../../../../00119-Cart/CartKeywords.robot

*** Keywords ***
Verify That Return Orders Status Page Is Successfully Appear
    Verify Product Name and Price Is Successfully Appear
    wait until page contains                ${RETURN_ORDERS_STATUS_SUBTOTAL_TEXT_APPEAR}
    wait until page contains                ${RETURN_ORDERS_STATUS_WALLET_TEXT_APPEAR}
    wait until page contains                ${RETURN_ORDERS_STATUS_TOTAL_PRICE_TEXT_APPEAR}

Click on Update Status Button
    Run Keyword until Success    seleniumlibrary.click element   ${RETURN_ORDERS_STATUS_UPDATE_STATUS_BUTTON}


Verification of Return Orders Return Approved Status
              wait until page contains    ${RETURN_ORDERS_STATU_RETURN_APPROVED_TEXT_APPEAR}


Verify That Poupup Of Selection Between Approave and Reject Return Is Successfully Appear
    wait until page contains     ${RETURN_ORDERS_STATUS_MARK_RETURN_ORDER_AS_APPROVED_OR_REJECTED_TEXT_APPEAR}

Select Return Approaved
    Run Keyword until Success    seleniumlibrary.click element     ${RETURN_ORDERS_STATUS_RETURN_APPROAVE_SELECT}