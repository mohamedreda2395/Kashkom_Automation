*** Settings ***
Library     SeleniumLibrary
Resource    ./ShopPageKeywords.robot
*** Keywords ***

Navigate To Store Page
    ShopPageKeywords.Verify That Shop Page Loaded Succssfully
    ShopPageKeywords.Click on Specific Store




