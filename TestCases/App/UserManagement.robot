*** Settings ***
Library    AppiumLibrary
Library    SeleniumLibrary
Resource    ../../001MobileApp/0010-AndroidApp/Resources/003-UserManagement/UserManagementPage.robot
Resource    ../../001MobileApp/0010-AndroidApp/Resources/002-IntroScreens/IntroScreensPage.robot


Test Setup      AppCommonKeywords.Open App
Test Teardown    AppCommonKeywords.Close App

*** Test Cases ***
Delete mobile that i logged wih it
    Delete mobile that i logged with it  11111100



validate that user will access to complete profile page after enter new valid phone number

validate that phone number will be displayed after access to complete profile page

check that user can edit his phone number

validate display validation massage when user enter invalid name

validate displaying validation massage if user leave gender empty and click continue

validate that need help will navigate user to chat with support

validate that user can select between male and female

validate that resend otp timer not clickable while still time

check that user will be blocked for a certain period after enter invalid otp more than one time ( configured by admin )

validate that user see gender empty when open complete profile screen

check when user click on edit will back to complete my profile page

validate user can delete otp

validate that user can copy OTP and access to home page

validate that user can select social email to sign up with

validate that phone number field will be empty when user sign up social

validate that phone number field will be empty when user sign up social

validate that user can enter phone number when sign up social

validate display validation when user enter invalid phone number

validate that The "Continue" button only becomes active when all fields are filled out correctly

Check that kamashka user able to login with social as Facebook or Gmail - Apple

check kashkom user navigate to otp screen when insert valid number and click on login

check user not able to click login button without insert 8 digit number

check user able to access to login screen after select country and pass splash screens

Check that kamashka user able to access home page as a guest

Check that kashkom login screen match the design

check kashkom user not able to login via invalid mobile

check user navigate to requesting access page from facebook when login by facebook

check user navigate to requesting access page from google when login by google

check user navigate to requesting access page from apple when login by Apple

check user navigate to whasApp with kashkom number when click on need help

check user navigate to home page after click on continue in requesting access page when logn with social media

check user navigate to login screen after click on cancel in requesting access page when login with social media

check user blocked from admin not able to login(phone number or social) and validation message display.

check view true phone number in otp screen after login

check user should return to login page when click on edit button in otp screen

check user return to previous field when delete otp number in otp screen

check user do nothing when click on timer on otp screen

check user able to login by his number after specific block time end

check timer to resend otp doesn't start agin if i put the app in background

check user not able to login by the number whos blocked after insert wrong otp many time

check user not able to use old otp when back to login screen from otp screen and login again

check user navigate to login screen when click on back to login after insert invalid otp more than attempts that configure from super admin

check user stay in otp screen when click on empty space

check user see validation as design when insert wrong otp more than throttle number in admin dashboard

check user not able to use old OTP code after click on resend code again button

check user can chat with customer support when click on need help in otp screen

check user can't paste Arabic numbers or any characters in otp fields

check user can copy otp and paste it in otp fields

check user able to delete number or more from OTP during insert it

check user open app to login page when kill app in otp screen

check user can login successfully when insert invalid otp then update it with valid otp

check user login successfully when put app in background in otp screen then open app again and insert valid otp

check user able to request code again after specific time from admin

Check user able to view OTP Screen and matched with design

check display validation when enter invalid OTP

validate navigate user to home when enter valid OTP

check that user number will be displayed when access to OTP page

check user able to resend code after specific time as configured from admin

check user will have block for 5 min after resend code 3 times

check user can't resend otp more than 3 times
