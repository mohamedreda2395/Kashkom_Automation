*** Settings ***
Resource           ../../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./CreatePostLocators.robot
Resource    ./CreatePostVaribales.robot
Resource    ./CreatePostAssertions.robot
Resource    ./00111112-PostConfirmPage/PostConfirmPageKeywords.robot
Library         DateTime

*** Variables ***
${AUTO_POST_TITLE}=  ${CREATEPOST-POSTTITLE-TEXT}

*** Keywords ***

Verify Creeate Post Page Loaded Successfully
        wait until page contains        ${CREATEPOST_CREATEPOST_TEXT}

Generate Post Title
        ${current_date}=    DateTime.Get Current Date        result_format=%Y%m%d.%H%M%S

                   set global variable      ${AUTO_POST_TITLE}   ${CREATEPOST-POSTTITLE-TEXT}${current_date}
Insert Title And Description Of The Post
        [Arguments]               ${post_description}
        Enter Title Of The Post
        Enter Description Of The Post       ${post_description}

Upload Asset
        [Arguments]                 ${post_asset_path}
        Choose Asset To Upload      ${post_asset_path}
#        Choose Asset To Upload
Upload Another Asset
    [Arguments]                 ${another_post_asset_path}=C:\\Users\\11224\\Desktop\\New folder (2)\\2.MP4
    Upload Asset                ${another_post_asset_path}
    wait until element is visible    ${CREATEPOST_ASSET_CLOSE_ICON_APPEAR}



Click On 3 Dots Of Audience
    Run Keyword until Success    seleniumlibrary.click element   ${CREATEPOST_AUDIENCE_3_DOTS}

Click On Edit Audience Icon
    Run Keyword until Success    seleniumlibrary.click element    ${CREATEPOST_Edit_AUDIENCE_Button}

Select The Target Audience
        sleep  4
        Select The Audience

Select The Edited Target Audience
        Select The Edited Audience
Choose Package
        Select Package

Insert Post Keyword
        [Arguments]         ${post_keyword_text}
        Enter Keyword       ${post_keyword_text}

Preview Post
        Click On Preview Post


Enter Title Of The Post
       Generate Post Title
        Run Keyword until Success    seleniumlibrary.input text                                   ${CREATEPOST-POSTTITLE}                             ${AUTO_POST_TITLE}


Enter Description Of The Post
        [Arguments]               ${post_description}
        Run Keyword until Success    seleniumlibrary.input text                                   ${CREATEPOST-POSTDESCRIPTION}                       ${post_description}

Choose Asset To Upload
        [Arguments]               ${post_asset_path}
        choose file                                  ${CREATEPOST-CHOOSEASSET}                            ${post_asset_path}

Select The Audience
        Run Keyword until Success    seleniumlibrary.click element       ${CREATEPOST-SELECTTHEAUDIENCE}
Select The Edited Audience
        Run Keyword until Success    seleniumlibrary.click element                                ${CREATEPOST-SELECTTHEEDITEDAUDIENCE}

Active Link Product Toggle
    Run Keyword until Success    seleniumlibrary.click element           ${CREATEPOST_LINK_PRODUCT_TOGGLE}

Select Extra Link Radio Button
     Active Link Product Toggle
     wait until element is visible    ${CREATEPOST_EXTRA_LINK_RADIO_BUTTON}
     Run Keyword until Success    seleniumlibrary.click element                    ${CREATEPOST_EXTRA_LINK_RADIO_BUTTON}

Insert an Extera Link
    wait until element is visible                                ${CREATEPOST_EXTRA_LINK_TEXT_FIELD}
    Run Keyword until Success    seleniumlibrary.click element   ${CREATEPOST_EXTRA_LINK_TEXT_FIELD}
Select Product From My Store Radio Button
        Active Link Product Toggle
        wait until element is visible   ${CREATEPOST_SELECT_PRODUCT_FROM_MY_STORE_RADIO_BUTTON}
        Run Keyword until Success    seleniumlibrary.click element                   ${CREATEPOST_SELECT_PRODUCT_FROM_MY_STORE_RADIO_BUTTON}


Verify That Link Product Page Is Successfully Opend
        wait until element is visible    ${CREATEPOST_SELECT_PRODUCT_FROM_MY_STORE_RADIO_BUTTON}

Select Product From Link Product Page
    Verify That Link Product Page Is Successfully Opend
    Run Keyword until Success    seleniumlibrary.click element           ${CREATEPOST_SELECT_PRODUCT_FROM_MY_STORE}


Close Successfull Message
        Run Keyword until Success    seleniumlibrary.click element                                ${CREATEPOST_CLOSE_SUCCESSFULL_MESSAGE_TO_SELECTTHEAUDIENCE}

Select Package
        scroll element into view                     ${CREATEPOST-SCROLL_INTO_VIEW_PACKAGE}
        Run Keyword until Success    seleniumlibrary.click element                                ${CREATEPOST-SELECT_PACKAGE}

Enter Keyword
        [Arguments]              ${post_keyword_text}
        scroll element into view                     ${CREATEPOST-SCROLL_INTO_VIEW_KEYWORD}
        Run Keyword until Success    seleniumlibrary.input text                                   ${CREATEPOST_KEYWORD_FIELD}                  ${post_keyword_text}
        wait until page contains                     ${post_keyword_text}
        Run Keyword until Success    seleniumlibrary.click element                                ${CREATEPOST-SELECT_KEYWORD}

Click On Preview Post
        scroll element into view                     ${CREATEPOST_SCROLL_INTO_VIEW_PREVIEW_POST_BUTTON}
        Run Keyword until Success    seleniumlibrary.click element                                ${CREATEPOST_PREVIEW_BUTTON}


