*** Settings ***
Library     SeleniumLibrary
Resource     ../0011-Header/HeaderKeywords.robot
Resource     ../../../../002Web/Resources/00111-Home/HomeKeywords.robot

*** Keywords ***

Open Login DropDown Menu

    verify That Header is Successfully Appear
    Click Profile Icon To Sign

Navigate To Profile Page
    verify That Header is Successfully Appear
    Click Profile Icon
    