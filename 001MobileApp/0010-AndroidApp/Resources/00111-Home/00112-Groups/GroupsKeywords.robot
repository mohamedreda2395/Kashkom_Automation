*** Settings ***
Resource     ../../../002Web/Resources/000-Common/CommonKeyWords.robot
Library     SeleniumLibrary
Resource    ./GroupsAssertions.robot
Resource    ./GroupsLocators.robot

*** Keywords ***
Verify That Grops Page Loaded Successfully
    wait until page contains    ${Groups_Invitations_Text_Appear}
    wait until page contains    ${Groups_My_groups_Text_Appear}
    wait until page contains    ${Groups_New_group_Text_Appear}

Insert Group Name To Search For
    [Arguments]    ${groups_search_field_group_name_text}
    Run Keyword until Success    seleniumlibrary.input text    ${GROUPS_SEARCH_FIELD}     ${groups_search_field_group_name_text}
    wait until page contains    ${groups_search_field_group_name_text}



