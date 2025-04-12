*** Settings ***
Resource          ../../../../002Web/Resources/000-Common/CommonKeyWords.robot
Resource          ../../../../002Web/Resources/000-Common/Common.robot
Resource          ../../../../002Web/Resources/00111-Home/HomeKeywords.robot


Library     SeleniumLibrary
Resource    ./HeaderLocators.robot
Resource    ./HeaderAssertions.robot
*** Keywords ***

verify That Header is Successfully Appear
    SeleniumLibrary.wait until element is visible    ${HEADER_SHOP_ICON}

Click Profile Icon To Sign
        click button      ${HEADER_PROFILE_ICON_TO_SIGN}
Click Profile Icon
    wait until element is enabled    ${PROFILE_LIST_ICON}
    Run Keyword until Success    seleniumlibrary.click element    ${PROFILE_LIST_ICON}

Navigate to Shop page

    Run Keyword until Success    seleniumlibrary.click element    ${Shop_Button_From_Menu}

Click on Cart Tab
    Run Keyword until Success    seleniumlibrary.click element    ${HEADER_CART_ICON}

Navigate To Home page
    Click Home Tab
    Verify Home Page Loaded

Click Home Tab
    wait until element is enabled    ${HOME_BUTTON_FROM_MENU}
    Run Keyword until Success    seleniumlibrary.click element    ${HOME_BUTTON_FROM_MENU}