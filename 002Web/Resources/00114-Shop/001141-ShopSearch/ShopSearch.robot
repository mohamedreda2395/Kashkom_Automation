*** Settings ***
Library     SeleniumLibrary

Resource    ../001141-ShopSearch/ShopSearchKeywords.robot

*** Keywords ***
Search For Product Through Shop Page
    [Arguments]    ${product_name}
    ShopSearchKeywords.Insert Product Name To Search For    ${product_name}
    ShopSearchKeywords.click magnifier icon
    ShopSearchKeywords.Verify product appear                ${product_name}
