*** Settings ***
Resource           ../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library    SeleniumLibrary
Resource    ./CheckOutLocators.robot
Resource    ./CheckOutAssertions.robot
Resource    ../../001110ProfileMenu/0011101ProfileMenuLoggedUser/00111014-MyOrders/MyOrderKeywords.robot

*** Keywords ***

Verify that checkout page opened successfully
    Verify that checkout page Text Header opened successfully
    Verify that checkout page Contain Shipping Address
    Verify that checkout page Contain Product Name
    verify that checkout page contain product Price
Select cash on delivery method
    Run Keyword until Success    seleniumlibrary.click element    ${COD_METHOD}

Scroll down to view place order button
    scroll element into view      ${PLACE_ORDER_BUTTON}

click on place order button
    Scroll down to view place order button
    click button    ${PLACE_ORDER_BUTTON}

Navigate To My Order Page
    click on place order button
    Verify That My Order Page Is Successfully Appear





