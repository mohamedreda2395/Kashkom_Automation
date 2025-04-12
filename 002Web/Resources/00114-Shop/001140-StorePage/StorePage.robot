*** Settings ***
Library     SeleniumLibrary
Resource    ./StorePageKeywords.robot

*** Keywords ***

View Product List From Store Page
    StorePageKeywords.Verfiy That Store Page Is Sucssfully Opened
    StorePageKeywords.Verify Created Post Tab Opened Successfully
