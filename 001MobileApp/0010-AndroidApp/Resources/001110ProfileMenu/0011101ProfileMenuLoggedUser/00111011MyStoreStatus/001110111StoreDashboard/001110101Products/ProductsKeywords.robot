*** Settings ***
Resource           ../../../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./ProductsLocators.robot
Resource    ./ProductsAssertions.robot
Resource    ../../../../../00119-Cart/CartKeywords.robot
*** Keywords ***
Verify That Product List is Successfully Loaded
    wait until page contains    ${STOTRE_DASHBOARD_PRODUCTS_LIST_QUANTITY_TEXT}
    CartKeywords.Verify That Product Name Is Successfully Appear

Click on Edit Product Icon
    Run Keyword until Success    seleniumlibrary.click element    ${STOTRE_DASHBOARD_PRODUCTS_LIST_EDIT_ICON}