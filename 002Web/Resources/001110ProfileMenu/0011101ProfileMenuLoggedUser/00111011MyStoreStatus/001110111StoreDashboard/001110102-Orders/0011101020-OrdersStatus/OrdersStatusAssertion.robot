*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${ORDER_STATUS_CANCEL_ORDER_TEXT}   Cancel order
${ORDER_STATUS_OUT_OF_STOCK_TEXT_BUTTON}      //a[@class='ajax-modal']
${ORDER_STATUS_SUBTOTAL_TEXT_APPEAR}          Subtotal:
${ORDER_STATUS_SHIPPING_FEES_TEXT_APPEAR}     Shipping fees:
${ORDER_STATUS_CASH_ON_DELIVERY_TEXT_APPEAR}   Cash on delivery
${ORDER_STATUS_TOTAL_PRICE_TEXT_APPEAR}        Total price
${ORDER_STATUS_ASSIGN_TO_DELIVERY_MAN_TEXT_APPEAR}     Assign delivery man
${ORDER_STATUS_OUT_OF_DELIVERY_DELIVERY_MAN_TEXT_APPEAR}    Out for delivery
${ORDER_STATUS_DELIVERED_MAN_TEXT_APPEAR}        Delivered