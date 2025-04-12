*** Settings ***
Resource           ../../../../../../002Web/Resources/000-Common/CommonKeyWords.robot
Library     SeleniumLibrary
Resource    ./ProductDetailsAssertions.robot
Resource    ../../../../../../002Web/Resources/00119-Cart/CartKeywords.robot
Resource    ./ProductDetailsLocators.robot
Resource    ../../../../../Resources/00119-Cart/CartKeywords.robot
*** Keywords ***
Verify That Product Details Page Secessfully Appear
         [Arguments]    ${product_name}
    Verify That Product Name Is Successfully Appear     ${product_name}
    WAIT UNTIL ELEMENT IS ENABLED       ${USER_STORE_PRODUCT_PAGE_BOOST_PRODUCT_ELEMENT_APPEAR}

Open Boost Products

    Run Keyword until Success    seleniumlibrary.click element                       ${PRODUCT_DETAILS_BOOST_PRODUCT_TEXT_BUTTON}

Click on Add To Cart Button
            Run Keyword until Success    seleniumlibrary.click element                       ${PRODUCT_DETAILS_ADD_TO_CART_BUTTON}

Verify That Checkout Noty Bar Successfully Appear
     wait until page contains      ${USER_STORE_PRODUCT_PAGE_CHECKOUT_NOTY_BAR_APPEAR}
