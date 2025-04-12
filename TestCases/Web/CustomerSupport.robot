*** Settings ***
Library      SeleniumLibrary
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/CustomerSupport/CustomerSupportPage.robot
Resource    ../../002Web/Resources/000-Common/CommonKeyWords.robot
Resource    ../../002Web/Resources/003-UserManagement/UserManagementPage.robot
Resource    ../../002Web/Resources/003-UserManagement/0011101-Login/LoginPage.robot
Resource    ../../002Web/Resources/001-SharedModules/0011-Header/Header.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/Profile.robot
Resource    ../../002Web/Resources/002-AdminDashBoard/AdminDashBoardPage.robot
Suite Setup             CommonKeywords.Begin Web Test
Suite Teardown          CommonKeywords.End Web Test

*** Variables ***


*** Keywords ***

*** Test Cases ***

Kamashka user able to create new ticket
      Open Login DropDown Menu
      Navigate to login page
      SignIn     nadakamashka@gmail.com   Test@1234
      Verify Home Page Loaded
      Navigate To Profile Page
      Navigate to customer support
      Create new ticket                    ISSUE           NEED TO HELP
log out from kamashka as a user
      Navigate To Profile Page
      Logout From Kamashka
Open Admin dashboard as an admin
      Go To Admin Dash Board Page        super_admin@app.com     password
      Verify That Admin Dash Board Loaded Successfully
Take an action for ticket
      Reply ticket and close it
