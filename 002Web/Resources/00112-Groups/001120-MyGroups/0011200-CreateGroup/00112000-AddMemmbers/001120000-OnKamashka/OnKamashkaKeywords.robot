*** Settings ***
Resource     ../../../../../../../002Web/Resources/000-Common/CommonKeyWords.robot
Resource     ./OnKamashkaLocators.robot
Resource     ./OnKamashkaAssertions.robot
*** Keywords ***
Click on Invite Button
    Run Keyword until Success    SeleniumLibrary.click element    ${ADD_MEMBERS_ON_KAMASHKA_INVITE_BUTTON}

Verify That Invitation is Successfully Sent
    wait until page contains     ${ADD_MEMBERS_ON_KAMASHKA_INVITED_TEXT}