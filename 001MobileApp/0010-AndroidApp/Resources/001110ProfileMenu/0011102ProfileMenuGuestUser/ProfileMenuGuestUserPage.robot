*** Settings ***
Library    AppiumLibrary
Library    SeleniumLibrary
Resource    ../../../../../001MobileApp/0010-AndroidApp/Resources/001110ProfileMenu/0011102ProfileMenuGuestUser/ProfileMenuGuestUserKeywords.robot

*** Keywords ***
Open SignIn Page
    Verify Guest Profile Page Opened Successfully
    Navigate To SignIn Through Guest Profile Page
