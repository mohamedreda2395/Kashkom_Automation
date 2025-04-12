*** Settings ***
Library    SeleniumLibrary
Resource    ./OtpPageKeywords.robot

*** Keywords ***
Skip Otp Page
        Verify OTP Page Is Opened Successfully
        Close OTP Page
        Verify OTP Page Is Skipped Successfully


Verify Mobile Num With Valid OTP Code
        Verify OTP Page Is Opened Successfully
        Insert Valid OTP Code
        Verify OTP Inserted Successfully
        Handle Suggestions Dialog If Present