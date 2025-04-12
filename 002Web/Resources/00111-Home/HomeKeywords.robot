*** Settings ***
Resource           ../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./HomeLocators.robot
Resource    ./HomeAssertions.robot
Resource    ../Wallet/WalletKeywords.robot
#Library    OperatingSystem
#Library    String
#Library    Collections
Library    pyperclip
Resource   ../003-UserManagement/0011102-Register/Register.robot
Resource    ../001-SharedModules/0012-OtpPage/OtpPage.robot
Resource    ../001-SharedModules/0014-CategoriesPage/Categories.robot
Resource    ../001-SharedModules/0011-Header/Header.robot
Resource    ../001110ProfileMenu/0011101ProfileMenuLoggedUser/00111016-CompleteProfileAttributes/CompleteProfileAttributesPage.robot
Resource    ../001-SharedModules/0011-Header/001111-CreatePostAndStore/0011111-CreatePost/CreatePostKeyWords.robot
Resource    ../../../002Web/Resources/003-UserManagement/UserManagementPage.robot
Resource    ../../../002Web/Resources/001-SharedModules/0015-CompleteProfileDialog/CompleteProfileDialog.robot

*** Keywords ***
Navigate To Home page
    Run Keyword until Success    seleniumlibrary.click element    ${HOME_BUTTON_FROM_MENU}
    Verify Home Page Loaded

Verify Home Page Loaded
        WAIT UNTIL PAGE CONTAINS      ${HEADER_LOGIN_CREATE_BUTTON_APPEAR}
        wait until element is visible      ${FOLLOWING_TAB}


Click On Create Button
         Run Keyword until Success    seleniumlibrary.click element                 ${CREATEPOSTANDSTORE-CREATEBUTTON}

Get url from Clipboard then navigate to it

#    ${SHARED_URL}    Run And Return Rc And Output    ${PYTHON} -c "import pyperclip; print(pyperclip.paste())"
#    Log To Console    ${SHARED_URL}[1]
#    go to    ${SHARED_URL}[1]
    ${paste_url}    paste
    go to    ${paste_url}

verify live statistics is light
    wait until page does not contain element        ${LIVE_STATISTICS_LIGHTER}

viewing the post
#        wait until element is visible    ${SHARED_POST_ICONS}

        Run Keyword until Success    seleniumlibrary.click element    ${PLAY_ICON}
        sleep    7

#Check Animation Status for live statistics
#    ${animation_status}=    Execute JavaScript    return document.querySelector('.(//div[@class='animated-shadow wallet-balance-added'])[2]').style.animation !== 'none'
#    Should Be True    ${animation_status}


Navigate to wallet page
    Run Keyword until Success    seleniumlibrary.click element    ${Wallet_Icon}
    Verify Wallet Page Loaded

viewing share post from new user
    begin web test    ${URL}     ${BROWSER2}    seconed
#    Navigate to login page
    Complete Register Cycle
    Verify Mobile Num With Valid OTP Code
    Skip Complete profile Page
    Header.Navigate To Profile Page
    user can complete his attributes
    sleep    3
    Get url from Clipboard then navigate to it
    Close Dialog
    viewing the post

Viewing Shared Post From Following Tab
    Click On Following Tab
#    scroll element into view    ${AUTO_POST_TITLE}
    viewing the post


Click on Check Now Button
    WAIT UNTIL ELEMENT IS ENABLED    ${HOME_CHECKNOW_BUTTON}
    Run Keyword until Success    seleniumlibrary.click element    ${HOME_CHECKNOW_BUTTON}

Click On Following Tab
    Run Keyword until Success    seleniumlibrary.click element    ${FOLLOWING_TAB}
