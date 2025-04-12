*** Settings ***
Resource           ../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./StorePageAssertions.robot
Resource   ./StorePageLocators.robot

*** Keywords ***

Verfiy That Store Page Is Sucssfully Opened
    wait until element is enabled         ${STOREPAGE_PRODUCT_ELEMENT_SUCCSSFULLY_APPEAR}


Open User Created Posts Tab
    Run Keyword until Success    seleniumlibrary.click element                         ${STOREPAGE_CREATED_POST_Tab}

Verify Created Post Tab Opened Successfully
    Open User Created Posts Tab
    wait until element is visible         ${STOREPAGE_CREATED_POST_Tab_FIRST_POST_APPEAR}



Open Info Tab
    Run Keyword until Success    seleniumlibrary.click element                         ${STOREPAGE_INFO_Tab}

Verify Created Info Tab Opened Successfully
    Open Info Tab
    wait until page contains              ${STOREPAGE_INFO_Tab_STORE_RATING_TEXT_APPEAR}












