*** Settings ***
Library     SeleniumLibrary

Resource    ../../002Web/Resources/000-Common/CommonKeyWords.robot
Resource    ../../002Web/Resources/003-UserManagement/UserManagementPage.robot
Resource    ../../002Web/Resources/003-UserManagement/0011101-Login/LoginPage.robot
Resource    ../../002Web/Resources/001-SharedModules/0011-Header/Header.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/Profile.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/00111016-CompleteProfileAttributes/CompleteProfileAttributesPage.robot
Resource    ../../002Web/Resources/002-AdminDashBoard/AdminDashBoardPage.robot
Resource    ../../002Web/Resources/001-SharedModules/0015-CompleteProfileDialog/CompleteProfileDialog.robot
Suite Setup             CommonKeywords.Begin Web Test
Suite Teardown          CommonKeywords.End Web Test
*** Keywords ***

*** Test Cases ***

#check that user able to create test user
#     Open Login DropDown Menu
#     Navigate to login page
#     SignIn     super_admin@app.com     192873@Admin
#     Create Test User
#     Logout From Admin Dash Board

check that user able to complete his profile
      Navigate to login page
      SignIn    56465450
      Verify Mobile Num With Valid OTP Code
      Skip Complete profile Page
      Header.Navigate To Profile Page
      user can complete his attributes
