*** Settings ***
Resource    ../001120000-OnKamashka/OnKamashkaKeywords.robot

*** Keywords ***
Send Group Invitation Through You Follow Tab
    OnKamashkaKeywords.Click on Invite Button
    OnKamashkaKeywords.Verify That Invitation is Successfully Sent