*** Settings ***
Resource           ../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ../ShopSearchLocators.robot
Resource    ./ShopSearchResultLocators.robot
Resource    ../ShopSearchKeywords.robot
Resource    ../../../00119-Cart/001190-CheckOut/CheckOutKeywords.robot
Resource    ../../../00114-Shop/001140-StorePage/0011400-Products/00114000-ProductDetails/ProductDetailsKeywords.robot
Resource    ../../../00114-Shop/001140-StorePage/0011400-Products/00114000-ProductDetails/ProductDetails.robot
*** Keywords ***

Verify product appear
    [Arguments]    ${product_name}
    wait until page contains     ${product_name}

Add Product TO Cart By Icon
      Click on Add To Cart Icon
     Verify Popup Of Add To Cart Opened
     Add Item To Cart By Add To Cart Button

Navigate To Checkout Page Through Noty Bar
    Run Keyword until Success    seleniumlibrary.click element   ${CHECKOUT_SNACKBAR_BUTTON}

Verify Popup Of Add To Cart Opened
    wait until page contains    Price


Click on Add To Cart Icon
    Run Keyword until Success    seleniumlibrary.click element    ${ADD_TO_CART_ICON}
Click On Like Product
    Run Keyword until Success    seleniumlibrary.click element    ${SHOP_FAVOURIT_ICON}

Clear search bar
     Press Keys  ${SHOP_SEARCH_SEARCH_BAR}  CTRL+A+DELETE

