*** Settings ***
Resource    ./CreateGroupKeywords.robot
Resource    ../../../../002Web/Resources/00112-Groups/001120-MyGroups/0011201-SpecificGroup/SpecificGroupKeywords.robot
*** Keywords ***
Create Group
    [Arguments]    ${create_group_group_name_text}=GROUP NAME      ${create_group_group_description_text}=GROUP DESCRIPTION     ${specific_group_name_text}
    CreateGroupKeywords.Verify That Create Group Page Is Successfully Opened
    CreateGroupKeywords.Insert Group Name and Description       ${create_group_group_name_text}      ${create_group_group_description_text}
    CreateGroupKeywords.Switch Private Group To Public
    CreateGroupKeywords.Click on Create Button
    SpecificGroupKeywords.Verify That Specific Group Page is Successfully Opened      ${specific_group_name_text}