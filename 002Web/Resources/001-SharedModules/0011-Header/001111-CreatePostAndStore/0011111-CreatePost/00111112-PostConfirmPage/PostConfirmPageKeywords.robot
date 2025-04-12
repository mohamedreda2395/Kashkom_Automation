*** Settings ***
Resource          ../../../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./PostConfirmPageAssertions.robot
Resource    ./PostConfirmPageLocators.robot

*** Keywords ***
Verify Confirm Post Page Loaded Successfully
        wait until element is enabled                  ${CREATEPOST_CONFIRM_BUTTON_APPEAR}

Click On Confirm Post
         Verify Confirm Post Page Loaded Successfully
         Run Keyword until Success    seleniumlibrary.click element                                ${CREATEPOST_CONFIRM_BUTTON}

Click On Discover Products Icon
        Run Keyword until Success    seleniumlibrary.click element                                 ${POSTCONFIRMPAGE_DISCOVERPRODUCTS_ICON}

Click On Share And Win Icon
        Run Keyword until Success    seleniumlibrary.click element                                 ${POSTCONFIRMPAGE_SHAREANDWIN_ICON}
Click On Edit Post Icon
        Run Keyword until Success    seleniumlibrary.click element                                 ${POSTCONFIRMPAGE_SHAREANDWIN_ICON}