*** Settings ***
Resource     ../../../002Web/Resources/000-Common/CommonKeyWords.robot
Resource    ./InvitaionsLocators.robot
Resource    ./InvitaionsAssertions.robot

*** Keywords ***
Click on Accept Invitation Sign
    Run Keyword until Success    SeleniumLibrary.click element    ${GROUPS_INVITATIONS_ACCEPT_SIGN}
    wait until page contains    ${GROUPS_INVITATIONS_ACCEPT_SUCCESSFULL_MESSAGE_TEXT}

Click on Reject Invitation Sign
    Run Keyword until Success    SeleniumLibrary.click element    ${GROUPS_INVITATIONS_REJECT_SIGN}
    wait until page contains    ${GROUPS_INVITATIONS_REJECT_SUCCESSFULL_MESSAGE_TEXT}