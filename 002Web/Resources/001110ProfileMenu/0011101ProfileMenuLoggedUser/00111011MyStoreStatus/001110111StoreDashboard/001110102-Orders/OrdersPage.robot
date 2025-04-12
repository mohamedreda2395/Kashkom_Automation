*** Settings ***
Library     SeleniumLibrary
Resource    ../001110102-Orders/OrdersKeywords.robot


*** Keywords ***

Navigate To Order Status Page
    OrdersKeywords.Verify That Order Page Is Successfully Opened
    OrdersKeywords.Verify That User Could Suucssfully Navigate To Order Status Page

