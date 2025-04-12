*** Settings ***
Library     SeleniumLibrary
Resource    ../0011101410-Return/ReturnKeywords.robot

*** Keywords ***
Confirm Return Order
    ReturnKeywords.Verify That Return Page is Successfully Loaded
    ReturnKeywords.Click on Confirm Return