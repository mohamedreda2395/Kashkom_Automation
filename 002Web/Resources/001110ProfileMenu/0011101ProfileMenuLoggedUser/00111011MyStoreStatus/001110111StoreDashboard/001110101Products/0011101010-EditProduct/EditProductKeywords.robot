*** Settings ***
Resource          ../../../../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./EditProductAssertions.robot
Resource    ./EditProductLocators.robot
Resource    ../../../../../../00119-Cart/CartKeywords.robot
#Resource    ./002Web/Resources/008-SharedModules/0011-MenuBar/001110ProfileMenu/0011101ProfileMenuLoggedUser/00111011MyStoreStatus/001110111StoreDashboard/001110101Products/ProductsKeywords.robot

*** Keywords ***
Verify That Edit Product Page is Successfully Loaded
    wait until page contains   ${STORE_DASHBOARD_PRODUCT_LIST_EDIT_PRODUCT_NAME_ENGLISH_TEXT}
    wait until page contains   ${STORE_DASHBOARD_PRODUCT_LIST_EDIT_PRODUCT_CATEGORIES_TEXT}


Clear Quantity field
     Press Keys  ${STORE_DASHBOARD_PRODUCT_LIST_EDIT_PRODUCT_QUANTITY_FIELD}     CTRL+A+DELETE

Insert Quantity For Product
    Run Keyword until Success    seleniumlibrary.input text    ${STORE_DASHBOARD_PRODUCT_LIST_EDIT_PRODUCT_QUANTITY_FIELD}    ${STORE_DASHBOARD_PRODUCT_LIST_EDIT_PRODUCT_QUANTITY_NUMBER}

Click on Edit Button
    scroll element into view   ${STORE_DASHBOARD_PRODUCT_LIST_EDIT_PRODUCT_EDIT_BUTTON}
    Run Keyword until Success    seleniumlibrary.click element              ${STORE_DASHBOARD_PRODUCT_LIST_EDIT_PRODUCT_EDIT_BUTTON}
