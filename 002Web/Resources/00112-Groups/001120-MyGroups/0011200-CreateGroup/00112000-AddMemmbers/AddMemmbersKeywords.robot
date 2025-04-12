*** Settings ***
Resource     ../../../../../../002Web/Resources/000-Common/CommonKeyWords.robot
Resource    ./AddMemmbersAssertions.robot
Resource    ./AddMemmbersLocators.robot

*** Keywords ***
Verify That Add Members Page Is Successfully Opened
    wait until page contains     ${ADD_MEMBERS_HEADER_PAGE_TEXT}
    wait until page contains     ${ADD_MEMBERS_ON_KAMASHKA_TEXT}
    wait until page contains     ${ADD_MEMBERS_YOU_FOLLOW_TEXT}

Insert User Name To Search
    [Arguments]     ${add_members_search_user_name_text}
    Run Keyword until Success    SeleniumLibrary.input text   ${ADD_MEMBERS_SEARCH_BAR}  ${add_members_search_user_name_text}

Switch To You Follow Tab
    Run Keyword until Success    SeleniumLibrary.click element    ${ADD_MEMBERS_YOU_FOLLOW_Tab}

Click on Countinue Text Button
    Run Keyword until Success    SeleniumLibrary.click element    ${ADD_MEMBERS_COUNTINUE_TEXY_BUTTON}