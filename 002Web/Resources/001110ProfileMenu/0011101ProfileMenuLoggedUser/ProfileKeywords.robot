*** Settings ***
Resource           ../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./ProfileLocators.robot
Resource    ./ProfileAssertions.robot
Resource    ../../001-SharedModules/0011-Header/Header.robot
Resource    ../../00119-Cart/CartKeywords.robot




*** Keywords ***

Click On Edit Profile
       Run Keyword until Success    SeleniumLibrary.click element    ${EDIT_PROFILE_ICON}
       Verify Edite Profile Page Loaded Successfully

Verify Edite Profile Page Loaded Successfully
       SeleniumLibrary.wait until page contains    ${EDITE_PROFILE_PAGE_HEADER}

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

    execute javascript                ${USER-PROFILE-SCROLL}
    WAIT UNTIL ELEMENT IS VISIBLE     ${PROFILE_MENU_MY_ADDRESS_Tab}
    page should contain               ${Verify_User_profile_Load}
    Run Keyword until Success        seleniumlibrary.click element               ${PROFILE_MENU_MY_ADDRESS_Tab}
Click on customer support
    wait until page contains       ${Verify_User_profile_Load}
    execute javascript             ${USER-PROFILE-SCROLL}
    wait until page contains       ${Verify_CUSTOMER-SUPPORT-TAB}
    Run Keyword until Success      seleniumlibrary.click element                 ${USER-PROFILE--CUSTOMER-SUPPORT-TAB}

Click on Delete My Account
    scroll element into view    ${USER-PROFILE-DELETE-ACCOUNT-TAB}
    Run Keyword until Success      seleniumlibrary.click element         ${USER-PROFILE-DELETE-ACCOUNT-TAB}
    Run Keyword until Success      seleniumlibrary.click element         ${USER-PROFILE-DELETE-ACCOUNT-TAB_CONFIRM_DELETE}
