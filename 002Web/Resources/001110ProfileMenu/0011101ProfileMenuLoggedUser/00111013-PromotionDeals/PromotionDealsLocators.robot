*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${PROMOTION_DEALS_RECIVED_Tab}      received-deals-tab
${PROMOTION_DEALS_SWITCH_TO_PENDING_Tab}    received-pending-deals-tab
${PROMOTION_DEALS_ACCEPT_BUTTON}      //div[@class='one-item deal-dPd27geAzv']//button[@type='submit'][normalize-space()='Accept']
${PROMOTION_DEALS_PROMOTE_PRODUCT_BUTTON}     //a[@class='btn btn-primary btn-lg']
