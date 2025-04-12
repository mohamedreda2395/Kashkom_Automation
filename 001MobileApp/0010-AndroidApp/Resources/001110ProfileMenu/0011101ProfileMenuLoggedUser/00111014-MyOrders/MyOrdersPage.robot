*** Settings ***
Library     SeleniumLibrary
Resource    ../00111014-MyOrders/MyOrderKeywords.robot

*** Keywords ***
Navigate To Select Order To Return Page
    Verify That My Order Page Is Successfully Appear
    Click on Return Button