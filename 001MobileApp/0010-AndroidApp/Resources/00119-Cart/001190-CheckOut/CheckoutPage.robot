*** Settings ***
Library    SeleniumLibrary
Resource    ./CheckOutKeywords.robot


*** Keywords ***

Place Order
     CheckOutKeywords.Verify that checkout page opened successfully
     CheckOutKeywords.Select cash on delivery method
     CheckOutKeywords.click on place order button


