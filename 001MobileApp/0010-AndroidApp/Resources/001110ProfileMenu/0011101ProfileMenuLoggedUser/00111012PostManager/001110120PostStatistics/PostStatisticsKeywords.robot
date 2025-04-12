*** Settings ***
Resource           ../../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./PostStatisticsLocators.robot
Resource    ./PostStatisticsAssertions.robot
Resource    ../PostManagerKeywords.robot
Resource    ../../../../001-SharedModules/0011-Header/001111-CreatePostAndStore/0011111-CreatePost/00111111CreateTargetAudience/CreateTargetAudienceKeywords.robot
Resource    ../../../../001-SharedModules/0011-Header/001111-CreatePostAndStore/0011111-CreatePost/CreatePostPage.robot

*** Keywords ***

Verify Popup Of Post Statistics Appear Successfully
     [Arguments]                             ${assert_page_contains_specific_status}=Active

     sleep    2
     Display Post Statistics And Data
     Assert Page Contains Status Type         ${assert_page_contains_specific_status}
#     page should contain                      ${AUTO_POST_TITLE}
#     page should contain                      ${POSTSTATISTICS_PACKAGE_TEXT_APPEAR}


Assert Page Contains Status Type
    [Arguments]                                     ${assert_page_contains_specific_status}
   page should contain                              ${assert_page_contains_specific_status}



Click On Edit Icon
    Run Keyword until Success    seleniumlibrary.click element                                   ${POST_STATISTICS_EDIT_ICON}

Change Title And Description Of The Post
    [Arguments]    ${post_description}=15996
    Insert Title And Description Of The Post    ${post_description}



Click On Increase Budget Icon
    Run Keyword until Success    seleniumlibrary.click element                                   ${POST_STATISTICS_INCREASEBUDGET_ICON}

Insert Number Of Audiences For Increase Budget
    [Arguments]                                    ${post_statistics_increasebudget_text}=50
#    [Arguments]                                    ${post_statistics_increasebudget_text}=3         ${post_statistics_total_budget_text}=3.303
#    page should contain                            ${POSTSTATISTICS_NUMBER OF AUDIENCE_TEXT_APPEAR}
    Run Keyword until Success    seleniumlibrary.input text                                     ${POST_STATISTICS_INCREASEBUDGET_FIELD}          ${post_statistics_increasebudget_text}
#    page should contain                            ${post_statistics_total_budget_text}
#    page should not contain                        ${POSTSTATISTICS_TOTAL_BUDGET_SHOULD_NOT_EQUAL_ZERO}

Click On Increase Budget Button
    Run Keyword until Success    seleniumlibrary.click element                                  ${POST_STATISTICS_INCREASEBUDGET_BUTTON}

Delete the Post that on the search result
        Verify Popup Of Post Statistics Appear Successfully
        Click On Delete Post
        Confirm Delete Post


Click On Delete Post
            Run Keyword until Success    seleniumlibrary.click element                          ${POST_STATISTICS_DELETE_ACTIVE_POST_ICON}

Confirm Delete Post
            Run Keyword until Success    seleniumlibrary.click element                           ${POST_STATISTICS_CONFIRM_DELETE_POST_BUTTON}
            page should not contain                 ${AUTO_POST_TITLE}