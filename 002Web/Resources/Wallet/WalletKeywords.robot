*** Settings ***
Library    SeleniumLibrary
Resource    ./WalletAssertions.robot
Resource    ./WalletLocators.robot

*** Keywords ***
Verify Wallet Page Loaded
    wait until page contains    ${Wallet_Page_Header_Text}


