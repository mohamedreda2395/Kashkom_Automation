*** Settings ***
Library     SeleniumLibrary
Resource    ./002Web/Resources/001-SharedModules/0011-Header/00114-Shop/001140-StorePage/StorePageKeywords.robot

*** Keywords ***

View Product List From Store Page
    StorePageKeywords.Verfiy That Store Page Is Sucssfully Opened
    StorePageKeywords.Verify Created Post Tab Opened Successfully
