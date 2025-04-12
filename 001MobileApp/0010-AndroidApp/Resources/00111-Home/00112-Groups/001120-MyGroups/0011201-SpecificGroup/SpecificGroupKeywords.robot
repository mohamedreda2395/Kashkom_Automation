*** Settings ***
Resource     ../../../../../002Web/Resources/000-Common/CommonKeyWords.robot
Resource    ./SpecificGroupAssertions.robot
Resource    ./SpecificGroupLocators.robot

*** Keywords ***
Verify That Specific Group Page is Successfully Opened
    [Arguments]    ${specific_group_name_text}
    wait until page contains    ${specific_group_name_text}

Click on Add Members Text Button
    Run Keyword until Success    SeleniumLibrary.click element   ${SPECIFIC_GROUP_ADD_MEMBERS_BUTTON}

Click on 3 Dots
    Run Keyword until Success    SeleniumLibrary.click element   ${SPECIFIC_GROUP_3DOTS}
    wait until element is visible    ${SPECIFIC_GROUP_EDIT_GROUP_ICON}
    WAIT UNTIL ELEMENT IS VISIBLE    ${SPECIFIC_GROUP_DELETE_GROUP_ICON}

Click on Edit Group Icon
    Run Keyword until Success    SeleniumLibrary.click element    ${SPECIFIC_GROUP_EDIT_GROUP_ICON}

Delete A Specific Group
    Click on Delete Group Icon
    Confirm Delete Group

Click on Delete Group Icon
    Run Keyword until Success    SeleniumLibrary.click element    ${SPECIFIC_GROUP_DELETE_GROUP_ICON}

Confirm Delete Group
    wait until page contains     Are you sure ?
    Run Keyword until Success    SeleniumLibrary.click element    ${SPECIFIC_GROUP_DELETE_GROUPPOPUP_DELETE_BUTTON}