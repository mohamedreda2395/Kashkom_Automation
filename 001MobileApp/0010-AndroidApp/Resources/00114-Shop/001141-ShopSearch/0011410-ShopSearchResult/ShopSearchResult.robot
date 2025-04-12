*** Settings ***
Library    SeleniumLibrary
Resource    ../0011410-ShopSearchResult/ShopSearchResultKeywords.robot

*** Keywords ***

Navigate To Checout Page Through Shop Search Result

    ShopSearchResultKeywords.Add Product TO Cart By Icon
    ShopSearchResultKeywords.Navigate To Checkout Page Through Noty Bar
