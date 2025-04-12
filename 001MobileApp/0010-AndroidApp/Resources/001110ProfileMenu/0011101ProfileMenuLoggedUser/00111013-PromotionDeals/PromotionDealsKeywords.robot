*** Settings ***
Resource           ../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ../../../../../../../../../002Web/Resources/001-SharedModules/0011-Header/00114-Shop/001140-StorePage/0011400-Products/00114000-ProductDetails/001140000-BoostProduct/BoostProductKeywords.robot
Resource    ./PromotionDealsLocators.robot
Resource    ./PromotionDealsAssertions.robot
Resource    ./002Web/Resources/001-SharedModules/0011-Header/001110ProfileMenu/0011101ProfileMenuLoggedUser/00111013-PromotionDeals/001110130-PromoteProduct/PromoteProductKeywords.robot

*** Keywords ***

Verify That Promotion Deals Page Is Successfully Appear
    wait until page contains    ${PROMOTION_DEAL_PAGE_TEXT_APPEAR}

Swich To Pending Deal Tab
    Run Keyword until Success    seleniumlibrary.click element                   ${PROMOTION_DEALS_SWITCH_TO_PENDING_Tab}

Swich To Recived Tab
    Verify Recived Tab Is Successfully Appear
    Verify That Commission and Discount Fields are Successfully Matche That on Sent Deal

Aceept The Deal
    Click Accept
    Verify That Deal IS Successfully Accepted









Verify That Commission and Discount Fields are Successfully Matche That on Sent Deal
    Verify That Commission Field Is Successfully Matches That on Sent Deal
    Verify That Discount Field Is Successfully Matches That on Sent Deal




Swich To Recived Tab
    Run Keyword until Success    seleniumlibrary.click element               ${PROMOTION_DEALS_RECIVED_Tab}

Verify Recived Tab Is Successfully Appear
    wait until page does not contain    ${PROMOTION_DEALS_DEAL_WITH_TEXT_APPEAR}



Verify That Commission Field Is Successfully Matches That on Sent Deal
        wait until page contains        ${PROMOTION_DEALS_COMMISSION_PERCENT_TEXT}

Verify That Discount Field Is Successfully Matches That on Sent Deal
        wait until page contains        ${PROMOTION_DEALS_DISCOUNT_PERCENT_TEXT}

Click Accept
    Run Keyword until Success    seleniumlibrary.click element                   ${PROMOTION_DEALS_ACCEPT_BUTTON}

Verify That Deal IS Successfully Accepted
    wait until page contains        ${PROMOTION_DEALS_PROMOTE_PRODUCT_TEXT_APPEAR}

Click on Promote Product
    Run Keyword until Success    seleniumlibrary.click element               ${PROMOTION_DEALS_PROMOTE_PRODUCT_BUTTON}

Verify That Navigation To Promote Product Page Is Successfully Done
    Verify That Promote Product Page Is Successfully Appear

