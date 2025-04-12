*** Settings ***
Library    SeleniumLibrary
Resource    ./CheckOutLocators.robot

*** Keywords ***



Verify that checkout page Text Header opened successfully
    wait until page contains    ${CHECKOUT_PAGE_TEXT_HEADER}

Verify that order is placed successfully
    wait until page contains    ${SUCCESSFULL_MSG_FOR_PLACED_ORDER}

Verify that checkout page Contain Shipping Address
    wait until page contains      ${CHECKOUT_PAGE_SHIPPING_ADDRESS_TEXT}

Verify that checkout page Contain Product Name
     [Arguments]    ${product_name}= Clothes
    wait until page contains         ${product_name}

verify that checkout page contain product Price
    wait until page contains    ${CHECKOUT_PAGE_Product_Price_Text}

*** Variables ***
${CHECKOUT_PAGE_TEXT_HEADER}    Checkout
${CHECKOUT_PAGE_SHIPPING_ADDRESS_TEXT}    Shipping address:
${CHECKOUT_PAGE_Product_Price_Text}    25.000 KWD