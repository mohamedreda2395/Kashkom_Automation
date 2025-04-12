*** Settings ***
Resource           ../../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ../../../../001-SharedModules/0011-Header/001111-CreatePostAndStore/0011111-CreatePost/CreatePostKeyWords.robot
Resource    ../../../../001-SharedModules/0011-Header/001111-CreatePostAndStore/0011111-CreatePost/00111111CreateTargetAudience/CreateTargetAudienceKeywords.robot
Resource    ./EditPostLocators.robot
*** Keywords ***
Preview Edited Post
    SCROLL ELEMENT INTO VIEW    ${EDIT_POST_SCROLL_INTO_VIEW_PREVIEW_POST_BUTTON}
    Run Keyword until Success    seleniumlibrary.click element               ${EDIT_POST_PREVIEW_BUTTON}

Edit Target Audience
    Click On 3 Dots Of Audience
    Click On Edit Audience Icon
    Enter Name Of Target Audience
    Select Male Gender Type
    Select Nationalities
    Save Target Audience
    sleep    2
