*** Settings ***
Library     SeleniumLibrary
Resource    ../00114000-ProductDetails/ProductDetailsKeywords.robot
*** Keywords ***
Add Item To Cart By Add To Cart Button
        ProductDetailsKeywords.Click on Add To Cart Button
        ProductDetailsKeywords.Verify That Checkout Noty Bar Successfully Appear
