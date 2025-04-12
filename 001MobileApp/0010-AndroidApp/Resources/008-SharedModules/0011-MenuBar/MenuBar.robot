*** Settings ***
Library     SeleniumLibrary
Resource    ../../../../../001MobileApp/0010-AndroidApp/Resources/001-SharedModules/0011-MenuBar/MenuBarKeywords.robot

*** Keywords ***
Open Profile menu list as a guest user
    verify That App Menu is Successfully Appear
    Navigate To Profile Through Menu Bar

