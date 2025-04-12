*** Settings ***
Library     SeleniumLibrary
Resource    ../001110101Products/ProductsKeywords.robot

*** Keywords ***

Navigate To Edit Product Page
    ProductsKeywords.Verify That Product List is Successfully Loaded
    Click on Edit Product Icon