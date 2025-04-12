*** Settings ***
Library     SeleniumLibrary
Resource    ../00111011110-ReturnOrders/ReturnOrdersKeywords.robot

*** Keywords ***

Navigate To Return Orders Status Page
         ReturnOrdersKeywords.Verify That Return Orders Page Is Successfully Opened
         ReturnOrdersKeywords.Verify That User Could Suucssfully Navigate To Return Orders Status Page



