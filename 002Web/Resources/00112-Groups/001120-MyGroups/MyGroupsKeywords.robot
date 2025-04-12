*** Settings ***
Resource     ../../../../002Web/Resources/000-Common/CommonKeyWords.robot
Resource    ./MyGroupsLocators.robot
Library     SeleniumLibrary

*** Keywords ***

Click On New Group
     Run Keyword until Success    seleniumlibrary.click element    ${MY_GROUPS_NEW_GROUP_Tab}

Click on A Specific Group
    Run Keyword until Success    seleniumlibrary.click element   ${MY_GROUPS_SPECIFIC_GROUP_CLICK}