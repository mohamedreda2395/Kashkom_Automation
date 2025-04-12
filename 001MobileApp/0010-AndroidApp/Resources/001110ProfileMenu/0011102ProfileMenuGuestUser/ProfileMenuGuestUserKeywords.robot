*** Settings ***
Library    AppiumLibrary
Library    SeleniumLibrary
Resource    ../../../../../001MobileApp/0010-AndroidApp/Resources/001110ProfileMenu/0011102ProfileMenuGuestUser/ProfileMenuGuestUserAssertions.robot


*** Keywords ***
Verify Guest Profile Page Opened Successfully
    AppiumLibrary.wait until page contains element    ${SIGNIN_BUTTON}

Navigate To SignIn Through Guest Profile Page
    AppiumLibrary.click element    ${SIGNIN_BUTTON}