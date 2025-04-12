*** Settings ***
Resource     ../../../../../../002Web/Resources/000-Common/CommonKeyWords.robot
Resource    ./EditGroupAssertions.robot
Resource    ./EditGroupLocators.robot

*** Keywords ***
Verify That Edit Group Page is Succcessfully Opened
    wait until page contains    ${EDIT_GROUP_TEXT_HEADER}

Click on Update Button
    Run Keyword until Success    SeleniumLibrary.click element  ${EDIT_GROUP_UPDATE_BUTTON}