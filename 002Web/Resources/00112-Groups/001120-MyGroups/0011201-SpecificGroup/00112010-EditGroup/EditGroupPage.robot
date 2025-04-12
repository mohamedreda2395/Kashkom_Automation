*** Settings ***
Resource    ./EditGroupKeywords.robot
Resource    ../../../../../002Web/Resources/00112-Groups/001120-MyGroups/0011201-SpecificGroup/SpecificGroupKeywords.robot
Resource    ../../../../../002Web/Resources/00112-Groups/001120-MyGroups/0011200-CreateGroup/CreateGroupKeywords.robot

*** Keywords ***
Edit Group

    EditGroupKeywords.Verify That Edit Group Page is Succcessfully Opened
    CreateGroupKeywords.Insert Group Name and Description
    EditGroupKeywords.Click on Update Button
    SpecificGroupKeywords.Verify That Specific Group Page is Successfully Opened
