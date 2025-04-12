*** Settings ***
Library     SeleniumLibrary
Resource    ../00111015-MyReturns/MyReturnsKeywords.robot

*** Keywords ***
Verify That Return Order is Successfully Placed
    MyReturnsKeywords.Verify That My Returns Page Is Successfully Opened
    MyReturnsKeywords.Verify That Placed on Text Is Successfully Appear
    MyReturnsKeywords.Verify That Return amount Text Is Successfully Appear