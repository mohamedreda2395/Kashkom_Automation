*** Settings ***
Library     SeleniumLibrary
Resource    ./CompleteProfileAssertions.robot
Resource    ./CompleteProfileLocators.robot
Resource    ./CompleteProfileKeywords.robot
#Resource    ../../../003-SignUP-IN/Not needed/Register.robot
Resource    ../../../001-SharedModules/0012-OtpPage/OtpPage.robot
Resource    ../../../001-SharedModules/0014-CategoriesPage/Categories.robot



*** Variables ***




*** Keywords ***
user can complete his attributes
      move to attributes section
      insert nationality
      insert governorate
      insert area
      verify mobile number
      open user profile
      insert category

New User Can Complete His Attributes
    begin web test    ${URL}     ${BROWSER2}    seconed
    Register With new phone num To WebSite
    Close Otp Page
    Close Categories Page
    Navigate To Profile Page
    user can complete his attributes
    Navigate To Home page