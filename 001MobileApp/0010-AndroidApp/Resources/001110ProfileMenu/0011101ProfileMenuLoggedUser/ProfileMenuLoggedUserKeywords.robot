*** Settings ***

Library     SeleniumLibrary
Resource           ../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Resource    ./ProfileLocators.robot
Resource    ./ProfileAssertions.robot
#Resource    ../../../../../../008-SharedModules/0011-Header/Header.robot
Resource    ../../00119-Cart/CartKeywords.robot




*** Keywords ***

Click On My Store Icon
    wait until element is enabled    ${MY_STORE_ICON}
    Run Keyword until Success    seleniumlibrary.click element    ${MY_STORE_ICON}

Click on My Orders
    Run Keyword until Success    seleniumlibrary.click element    ${PROFILE_MENU_MY_ORDER_Tab}
    Verify Product Name and Price Is Successfully Appear

Click on My Returns
    Run Keyword until Success    seleniumlibrary.click element   ${PROFILE_MENU_MY_RETURN_Tab}
    Verify Product Name and Price Is Successfully Appear

Navigate To Post Manager Page
    wait until element is enabled    ${PROFILE_MENU_POSTMANAGER_Tab}
     Run Keyword until Success    seleniumlibrary.click element                  ${PROFILE_MENU_POSTMANAGER_Tab}

Logout From Kamashka
    scroll element into view    ${PROFILE_MENU_LOGOUT_BUTTON}
    Run Keyword until Success    seleniumlibrary.click element               ${PROFILE_MENU_LOGOUT_BUTTON}
    wait until page contains    ${Verify_HOME_PAGE_Load}

Click on My Sharing
    Run Keyword until Success    seleniumlibrary.click element              ${PROFILE_MENU_MY_SHARING_Tab}

Click on My Wallet
    Run Keyword until Success    seleniumlibrary.click element              ${PROFILE_MENU_MY_WALLET_Tab}

Click on My Shipping Address
    wait until page contains    ${Verify_User_profile_Load}
    Run Keyword until Success    seleniumlibrary.click element               ${PROFILE_MENU_MY_ADDRESS_Tab}
Click on customer support
    wait until page contains       ${Verify_User_profile_Load}
    execute javascript             ${USER-PROFILE-SCROLL-TO-CUSTOMER-SUPPORT}
    wait until page contains       ${Verify_CUSTOMER-SUPPORT-TAB}
    Run Keyword until Success      seleniumlibrary.click element                 ${USER-PROFILE--CUSTOMER-SUPPORT-TAB}
