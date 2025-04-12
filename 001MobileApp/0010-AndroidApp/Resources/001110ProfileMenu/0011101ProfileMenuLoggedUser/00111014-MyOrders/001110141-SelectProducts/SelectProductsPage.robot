*** Settings ***
Library     SeleniumLibrary
Resource    ./SelectProductsKeywords.robot
*** Keywords ***
Navigate To Return Page To Confirm Return
    SelectProductsKeywords.Verify That Select Products Page is Successfully Opened
    SelectProductsKeywords.Select Product To Return
    SelectProductsKeywords.Apply Return Reason
    SelectProductsKeywords.Click on Next Button