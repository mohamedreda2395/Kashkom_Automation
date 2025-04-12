*** Settings ***
Resource    ./AddMemmbersKeywords.robot
*** Keywords ***

*** Keywords ***
Search For User To Invite To The Group
    [Arguments]     ${add_members_search_user_name_text}
    Verify That Add Members Page Is Successfully Opened
    Insert User Name To Search      ${add_members_search_user_name_text}

Navigate To Created Group
    Click on Countinue Text Button