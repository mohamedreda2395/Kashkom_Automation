*** Settings ***
Library    SeleniumLibrary
Resource    ./OtpPageKeywords.robot

*** Keywords ***
Close Otp Page
        Verify OTP Page Is Opened Successfully
        Skip OTP Page
        Verify OTP Page Is Skipped Successfully