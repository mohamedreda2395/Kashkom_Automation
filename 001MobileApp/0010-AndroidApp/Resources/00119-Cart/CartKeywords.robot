*** Settings ***
Resource           ../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library    SeleniumLibrary
Resource    ./CartLocators.robot
Resource    ./CartAssertions.robot
Resource    ./001190-CheckOut/CheckOutKeywords.robot

*** Keywords ***
Verify That Cart Is Successfully Opened
    wait until page contains    ${CART_TEXT_TITLE}

Verify Product Name and Price Is Successfully Appear
    #  TODO MOVE
    Verify That Product Name Is Successfully Appear
    Verify That Product Price Is Successfully Appear

Navigate To Checkout Page Through Cart Page
    Click on Checkout
    Verify that checkout page opened successfully

Verify That Product Name Is Successfully Appear
     [Arguments]    ${product_name}=Test product10
    wait until page contains         ${product_name}

Verify That Product Price Is Successfully Appear
    [Arguments]    ${product_price}=10.000 KWD
    wait until page contains         ${product_price}



Click on Checkout
    Run Keyword until Success    seleniumlibrary.click element               ${CART_CHECKOUT_BUTTON}



