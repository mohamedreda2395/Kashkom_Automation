*** Settings ***
Library     SeleniumLibrary
Resource    ./CompleteProfileAttributesAssertions.robot
Resource    ./CompleteProfileAttributesLocators.robot
Resource    ./CompleteProfileAttributesKeywords.robot
Resource    ../../../003-UserManagement/0011102-Register/Register.robot
Resource    ../../../001-SharedModules/0012-OtpPage/OtpPage.robot
Resource    ../../../001-SharedModules/0014-CategoriesPage/Categories.robot
Resource    ../../../../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/Profile.robot


*** Variables ***




*** Keywords ***
user can complete his attributes
      Navigate To Edit Profile Page
      CompleteProfileAttributesKeywords.Insert Profile Date Of Birth
      CompleteProfileAttributesKeywords.Select Profile Gender
      CompleteProfileAttributesKeywords.Select Profile Nationality
      CompleteProfileAttributesKeywords.Select Profile Governorate
      CompleteProfileAttributesKeywords.Select Profile Area
      CompleteProfileAttributesKeywords.Click on Save btn


#New User Can Complete His Attributes
#    begin web test    ${URL}     ${BROWSER2}    seconed
#    Register With new phone num To WebSite
#    Close Otp Page
#    Close Categories Page
#    Navigate To Profile Page
#    user can complete his attributes
#    Navigate To Home page