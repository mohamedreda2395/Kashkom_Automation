*** Settings ***
Library     SeleniumLibrary
Resource    ../../002Web/Resources/000-Common/CommonKeyWords.robot
Resource    ../../002Web/Resources/003-UserManagement/UserManagementPage.robot
Resource    ../../002Web/Resources/003-UserManagement/UserManagementKeywords.robot
Resource    ../../002Web/Resources/003-UserManagement/0011101-Login/LoginPage.robot
Resource    ../../002Web/Resources/Search/SearchPage.robot
Resource    ../../002Web/Resources/00111-Home/HomeKeywords.robot
Resource    ../../002Web/Resources/001-SharedModules/0011-Header/Header.robot

Suite Setup             CommonKeywords.Begin Web Test
Suite Teardown          CommonKeywords.End Web Test
*** Keywords ***

*** Test Cases ***

 Check that user able to use search module

      Open Login DropDown Menu
      Navigate to login page
      SignIn                    nada3@app.com    Test@1234
      Verify Home Page Loaded
      Search for user
      Search for store              town team
      Search for group              public
      Search for post from global search
      Scroll















