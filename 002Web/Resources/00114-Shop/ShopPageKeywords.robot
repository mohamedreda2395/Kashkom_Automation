*** Settings ***
Resource           ../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./ShopPageAssertions.robot
Resource    ./ShopPageLocators.robot

*** Keywords ***
Verify That Shop Page Loaded Succssfully
    wait until element is enabled    ${SHOPPAGE_DELIVERY_TO_ELEMENT_SUCCSSFULLY_APPEAR}

Navigate To Slide One
    Run Keyword until Success    seleniumlibrary.click element                    ${SHOPPAGE_SLIDE_One_ELEMENT}

Navigate To Slide Two
    Run Keyword until Success    seleniumlibrary.click element                    ${SHOPPAGE_SLIDE_Two_ELEMENT}

Navigate To Slide Three
    scroll element into view         ${SHOPPAGE_SLIDE_3_ELEMENT_SUCCSSFULLY_APPEAR}
    Run Keyword until Success    seleniumlibrary.click element                    ${SHOPPAGE_SLIDE_3_ELEMENT_SUCCSSFULLY_APPEAR}

Verify That Slide One Loaded Succssfully
    wait until element is visible    ${SHOPPAGE_Slide_Product_Card_SUCCSSFULLY_APPEAR}

Navigate To All Categories Page
    scroll element into view    ${SHOPPAGE_SLIDE_3_ELEMENT_SUCCSSFULLY_APPEAR}
    scroll element into view    ${SHOPPAGE_STORE_CATEGORY_SLIDER_WITH_LABEL_CENTER_BELOW_SUCCSSFULLY_APPEAR}
    Run Keyword until Success    seleniumlibrary.click element               ${SHOP_PAGE_CATEGORIES_SEE_ALL}
    Verify All Categories Opened Successfully

Verify All Categories Opened Successfully
    wait until element is visible    ${SHOPPAGE_SEE_ALL_SPECIFIC_CATEGORY_SUCCSSFULLY_APPEAR}



Click on Specific Store
     scroll element into view    ${SHOPPAGE_SLIDE_3_ELEMENT_SUCCSSFULLY_APPEAR}
     scroll element into view    ${SHOPPAGE_FEATURED_STORES_ELEMENT_SUCCSSFULLY_APPEAR}
     Run Keyword until Success    seleniumlibrary.click element               ${SHOPPAGE_CLICK_ON_SPECIFIC_STORE}
