*** Settings ***
Library     SeleniumLibrary

Resource    ../../002Web/Resources/000-Common/CommonKeyWords.robot
Resource    ../../002Web/Resources/003-UserManagement/UserManagementPage.robot
Resource    ../../002Web/Resources/003-UserManagement/0011101-Login/LoginPage.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/001110017-Address/AddressPage.robot
Resource    ../../002Web/Resources/001-SharedModules/0011-Header/Header.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/Profile.robot
Resource    ../../002Web/Resources/001-SharedModules/0015-CompleteProfileDialog/CompleteProfileDialog.robot

Suite Setup             CommonKeywords.Begin Web Test
Suite Teardown          CommonKeywords.End Web Test

*** Test Cases ***


check that user able to create new address

      Navigate to login page
      SignIn    29999999
      Verify Mobile Num With Valid OTP Code
      Skip Complete profile Page
      Header.Navigate To Profile Page
      Navigate to my address
      open new address page
      insert your address name
      choose your location
      insert your first and last name       ahmed       reda
      select your governorate and area
      insert your block number and street name
      choose your building type
      insert your floor number and moobile
      Create Adress Button
      Assetion of Adress Creation


