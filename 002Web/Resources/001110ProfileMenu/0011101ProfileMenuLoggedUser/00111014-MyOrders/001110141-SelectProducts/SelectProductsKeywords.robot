*** Settings ***
Resource           ../../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./SelectProductsAssertions.robot
Resource    ./SelectProductsLocators.robot
Resource    ../../../../00119-Cart/CartKeywords.robot
*** Keywords ***
Verify That Select Products Page is Successfully Opened
    Verify Product Name and Price Is Successfully Appear

Select Product To Return
    sleep    2
    Run Keyword until Success    seleniumlibrary.click element    ${SELECT_PRODUCTS_SELECT_PRODUCTS_TO_RETURN_RADIO_BUTTON}

Apply Return Reason
    Select Return Reason
    Click Apply Button

Verify That Popup Of Slect Return Reason is Successfully Appeared
    wait until page contains    ${SELECT_PRODUCTS_RETURN_REASONS_TEXT}

Select Return Reason
    Verify That Popup Of Slect Return Reason is Successfully Appeared
    Run Keyword until Success    seleniumlibrary.click element    ${SELECT_PRODUCTS_SELECT_RETURN_REASON_RADIO_BUTTON}

Click Apply Button
    Run Keyword until Success    seleniumlibrary.click element    ${SELECT_PRODUCTS_APPLY_BUTTON}

Click on Next Button
    wait until element is enabled    ${SELECT_PRODUCTS_NEXT_BUTTON}
    Run Keyword until Success    seleniumlibrary.click element   ${SELECT_PRODUCTS_NEXT_BUTTON}
