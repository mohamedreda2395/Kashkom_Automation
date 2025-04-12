*** Settings ***
Library    SeleniumLibrary
Resource    ./001111-ShareAndWin/ShareAndWinKeywords.robot
Resource    ./001111-ShareAndWin/ShareAndWinAssertions.robot
Resource    ./001111-ShareAndWin/ShareAndWinLocators.robot
*** Keywords ***
Share To Friends
    Click On Share Button
    Select Share To Friend Button
    Click On Copy Icon
    Click On Close Button

Share On Kamashka
    Click On Share Button
    Select Share On Kamashka
    Click On Close Button For Post Full Screen

Share To Group
    Click On Share Button