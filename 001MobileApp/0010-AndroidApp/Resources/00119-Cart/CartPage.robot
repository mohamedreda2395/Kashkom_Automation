*** Settings ***
Library     SeleniumLibrary
Resource    ./CartKeywords.robot

*** Keywords ***

Checkout Through Cart Page
     CartKeywords.Verify That Cart Is Successfully Opened
     CartKeywords.Verify Product Name and Price Is Successfully Appear
     CartKeywords.Navigate To Checkout Page Through Cart Page


