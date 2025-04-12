*** Settings ***
Resource     ../../../002Web/Resources/000-Common/CommonKeyWords.robot
Library     SeleniumLibrary
Resource    ./GroupsKeywords.robot

*** Keywords ***
Verify That Grops Page is Successfully Opened and By Default My Groups are Successfully Appear
    Verify That Grops Page Loaded Successfully

Search For A Speacific Group
    [Arguments]    ${groups_search_field_group_name_text}=kimmo
    Insert Group Name To Search For    ${groups_search_field_group_name_text}
