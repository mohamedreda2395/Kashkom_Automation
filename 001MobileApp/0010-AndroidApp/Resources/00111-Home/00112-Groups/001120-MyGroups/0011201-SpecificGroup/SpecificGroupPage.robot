*** Settings ***
Resource    ./SpecificGroupKeywords.robot

*** Keywords ***
Navigate To Edit Group Page
    [Arguments]    ${specific_group_name_text}
    Verify That Specific Group Page is Successfully Opened      ${specific_group_name_text}
    Click on 3 Dots
    Click on Edit Group Icon

Delete Created Group
     [Arguments]    ${specific_group_name_text}
    Verify That Specific Group Page is Successfully Opened      ${specific_group_name_text}
    Click on 3 Dots
    Delete A Specific Group

