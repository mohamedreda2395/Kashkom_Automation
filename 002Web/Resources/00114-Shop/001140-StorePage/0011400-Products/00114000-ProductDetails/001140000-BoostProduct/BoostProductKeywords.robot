*** Settings ***
Resource           ../../../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./BoostProductLocators.robot
Resource    ./BoostProductAssertions.robot
*** Keywords ***
Verify Boost Product Pge Successfully Appear
    wait until page contains   ${BOOST_PRODUCT_TEXT_APPEAR}

Search For User
    [Arguments]    ${boost_product_searched_user_name}=Gemy
    Run Keyword until Success    seleniumlibrary.input text     ${BOOST_PRODUCT_SEARCH_FOR_USER}     ${boost_product_searched_user_name}

Select Searched User
     Run Keyword until Success    seleniumlibrary.click element             ${BOOST_PRODUCT_SELECT_USER}

Insert Quantity
    [Arguments]         ${boost_product_quantity_field_number}=2
    Run Keyword until Success    seleniumlibrary.input text          ${BOOST_PRODUCT_QUANTITY_FIELD}      ${boost_product_quantity_field_number}

Select Duration
    select from list by label       ${BOOST_PRODUCT_DURATION_FIELD}      ${BOOST_PRODUCT_DURATION_FIELD_NUMBER}

Insert Commission Value
    [Arguments]                     ${boost_product_commission_field_number}=10
    Run Keyword until Success    seleniumlibrary.input text                      ${BOOST_PRODUCT_COMMISSION_FIELD}                ${boost_product_commission_field_number}

Insert Discount Value
    [Arguments]    ${boost_product_discount_field_number}=20
    scroll element into view   ${BOOST_PRODUCT_DISCOUNT_FIELD}
    Run Keyword until Success    seleniumlibrary.input text                 ${BOOST_PRODUCT_DISCOUNT_FIELD}           ${boost_product_discount_field_number}

Send Deal Button
    Run Keyword until Success    seleniumlibrary.click element              ${BOOST_PRODUCT_SEND_DEAL_BUTTON}

Verify Deal Is Successfully Sent
    wait until page contains   ${PROMOTION_DEAL_PAGE_TEXT_APPEAR}