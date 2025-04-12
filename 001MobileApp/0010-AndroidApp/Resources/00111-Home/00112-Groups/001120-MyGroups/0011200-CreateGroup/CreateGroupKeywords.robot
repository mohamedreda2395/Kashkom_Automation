*** Settings ***
Resource     ../../../../../002Web/Resources/000-Common/CommonKeyWords.robot
Resource    ./CreateGroupAssertions.robot
Resource    ./CreateGroupLocators.robot

*** Keywords ***

Verify That Create Group Page Is Successfully Opened
    wait until page contains    ${CREATE_GROUP_TEXT_APPEAR}

Insert Group Name and Description
    [Arguments]    ${create_group_group_name_text}      ${create_group_group_description_text}
    Insert Group Name               ${create_group_group_name_text}
    Insert Group Description        ${create_group_group_description_text}

Insert Group Name
    [Arguments]    ${create_group_group_name_text}
    Run Keyword until Success    SeleniumLibrary.input text   ${CREATE_GROUP_GROUP_NAME_FIELD}    ${create_group_group_name_text}

Insert Group Description
    [Arguments]    ${create_group_group_description_text}
    Run Keyword until Success    SeleniumLibrary.input text   ${CREATE_GROUP_GROUP_DESCRIPTION_FIELD}    ${create_group_group_description_text}

Choose Asset To Upload
        [Arguments]               ${group_asset_path}
        choose file                                  ${CREATE_GROUP-CHOOSE_ASSET}                            ${group_asset_path}

Switch Private Group To Public
    Run Keyword until Success    SeleniumLibrary.click element   ${CREATE_GROUP_PUBLIC_PRIVATE_TOGGLE}

Click on Create Button
    Run Keyword until Success    SeleniumLibrary.click element    ${CREATE_GROUP_CREATE_BUTTON}