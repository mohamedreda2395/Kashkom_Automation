*** Settings ***
Library    SeleniumLibrary
Resource    ../../002Web/Resources/003-UserManagement/0011101-Login/LoginPage.robot
Resource    ../../002Web/Resources/003-UserManagement/UserManagementPage.robot
Resource    ../../002Web/Resources/00111-Home/Home.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/ProfileKeywords.robot
Resource    ../../002Web/Resources/003-UserManagement/0011102-Register/Register.robot
Resource    ../../002Web/Resources/000-Common/CommonKeyWords.robot
Resource    ../../002Web/Resources/001-SharedModules/0011-Header/Header.robot
Resource    ../../002Web/Resources/001-SharedModules/0012-OtpPage/OtpPage.robot
Resource    ../../002Web/Resources/001-SharedModules/0014-CategoriesPage/Categories.robot

Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/00111016-CompleteProfileAttributes/CompleteProfileAttributesPage.robot
Resource    ../../002Web/Resources/001-SharedModules/0011-Header/001111-CreatePostAndStore/CreatePostAndStorePopup.robot
Resource    ../../002Web/Resources/001-SharedModules/0011-Header/001111-CreatePostAndStore/0011111-CreatePost/CreatePostPage.robot
Resource    ../../002Web/Resources/002-AdminDashBoard/AdminDashBoardPage.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/00111012PostManager/PostManagerPage.robot
Resource    ../../002Web/Resources/001-SharedModules/0011-Header/001111-CreatePostAndStore/CreatePostAndStoreKeywords.robot
Resource    ../../002Web/Resources/001-SharedModules/0015-CompleteProfileDialog/CompleteProfileDialog.robot
Resource    ../../002Web/Resources/Search/SearchPage.robot



Test Setup       CommonKeywords.Begin Web Test         ${URL}      ${BROWSER}    first
Test Teardown    CommonKeywords.End Web Test

*** Test Cases ***

check that user able to earning profit from sharing post to friend

    Navigate to login page
    SignIn    29999999
    Verify Mobile Num With Valid OTP Code
    Skip Complete profile Page
    Share To Friends
    viewing share post from new user
    close browser
    switch browser    first
    verify live statistics is light
    sleep    3s


#check that user able to earning profit from sharing post On Kamashka
#    Open Login DropDown Menu
#    Navigate to login page
#    SignIn                             qc.reda95@app.com    Test@1234
#    Complete Scenario Of Posts Creation
#    Open Login DropDown Menu
#    Navigate to login page
#    SignIn                             qc.reda95@app.com    Test@1234
#    Search for post from global search
#    Click on Show Post Button
#    Share On Kamashka
#    New User Can Complete His Attributes
#    Search for user
#    Navigate To Home page
#    Viewing Shared Post From Following Tab
#    close browser
#    switch browser    first
#    verify live statistics is light
#    sleep    3s

#check that user able to earning profit from sharing post To Group
#
#    Open Login DropDown Menu
#    Navigate to login page
#    SignIn                             reda95@app.com    Test@1234
#    Complete Scenario Of Posts Creation
#    Open Login DropDown Menu
#    Navigate to login page
#    SignIn                             reda95@app.com    Test@1234
#    Search for post from global search
#    Click on Show Post Button
#    Select Share To Group


