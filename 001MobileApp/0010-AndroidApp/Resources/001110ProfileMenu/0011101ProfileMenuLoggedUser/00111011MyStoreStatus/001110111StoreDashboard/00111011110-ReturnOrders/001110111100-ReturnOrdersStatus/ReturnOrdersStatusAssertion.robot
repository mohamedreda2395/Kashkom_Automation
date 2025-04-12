*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${RETURN_ORDERS_STATUS_SUBTOTAL_TEXT_APPEAR}        Subtotal:
${RETURN_ORDERS_STATUS_WALLET_TEXT_APPEAR}         Wallet
${RETURN_ORDERS_STATUS_TOTAL_PRICE_TEXT_APPEAR}     Total price
${RETURN_ORDERS_STATUS_UPDATE_STATUS_BUTTON}    //a[@class='btn btn-primary ajax-modal']
${RETURN_ORDERS_STATUS_MARK_RETURN_ORDER_AS_APPROVED_OR_REJECTED_TEXT_APPEAR}    Mark return order as approved or rejected
${RETURN_ORDERS_STATU_RETURN_APPROVED_TEXT_APPEAR}    Return approved
${RETURN_ORDERS_STATU_RETURNED_TO_STORE_TEXT_APPEAR}    Returned to store