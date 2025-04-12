*** Settings ***
Resource    ./OnKamashkaKeywords.robot
*** Keywords ***

Send Group Invitation Through on Kamashka Tab
    OnKamashkaKeywords.Click on Invite Button
    OnKamashkaKeywords.Verify That Invitation is Successfully Sent