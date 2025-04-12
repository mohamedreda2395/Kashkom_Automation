*** Settings ***
Resource           ../../../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./CreateTargetAudienceLocators.robot
Resource    ./CreateTargetAudienceVariables.robot
Resource    ../CreatePostKeyWords.robot
Library         DateTime

*** Variables ***
${AUTO_TARGET_NAME}=  ${CREATETARGETAUDIENCE-TARGETAUDIENCETITLE_TEXT}
${AGE_SLIDER_FROM}=     //*[@class="range-slider-container"]/div/span[1]
${SLIDE_RANGE_LEFT}=     510
${SLIDE_RANGE_RIGHT}=    100
*** Keywords ***
Create Target Audience
        Click On Create Target Audience Button
#        [Arguments]     ${targetaudiencetitle_text}
        Enter Name Of Target Audience
#        Enter Name Of Target Audience       ${targetaudiencetitle_text}
        Select Both Gender Type
        Select Age Range
        select from list by label    ${CREATETARGETAUDIENCE-GOVERNORATEFIELD}      ${CREATETARGETAUDIENCE-SELECTGOVERNORATE}
        select from list by label    ${CREATETARGETAUDIENCE-AREAFIELD}                           ${CREATETARGETAUDIENCE-SELECTAREA}
#        Select Categories
#        Select Current Location
#        Increase Radius
#        repeat
        Save Target Audience

Generate Target Name
        ${current_date}=    DateTime.Get Current Date        result_format=%Y%m%d.%H%M%S
#        [Arguments]     ${targetaudiencetitle_text}
#                   set global variable      ${AUTO_TARGET_NAME}    ${targetaudiencetitle_text}${current_date}
                   set global variable      ${AUTO_TARGET_NAME}    ${CREATETARGETAUDIENCE-TARGETAUDIENCETITLE_TEXT}${current_date}
#        [Return]     ${AUTO_TARGET_NAME}
Click On Create Target Audience Button
       Run Keyword until Success    seleniumlibrary.click element                 ${CREATETARGETAUDIENCE-CREATETARGETAUDIENCEBUTTON}
Enter Name Of Target Audience
       Generate Target Name
#       [Arguments]     ${targetaudiencetitle_text}
#       Run Keyword until Success    seleniumlibrary.input text                    ${CREATETARGETAUDIENCE-TARGETAUDIENCETITLE}        ${targetaudiencetitle_text}
       Run Keyword until Success    seleniumlibrary.input text                    ${CREATETARGETAUDIENCE-TARGETAUDIENCETITLE}        ${AUTO_TARGET_NAME}
Select Both Gender Type
       Run Keyword until Success    seleniumlibrary.click element                 ${CREATE_TARGET_AUDIENCE_SELECT_GENDER_TYPE_BOTH}
Select Categories
       select from list by label     ${CREATETARGETAUDIENCE-SELECTGCATEGORIES}      @{CREATETARGETAUDIENCE-SELECTGCATEGORIES_TYPES}

Select Current Location
        scroll element into view    //*[@id="audience-use-map"]
        Run Keyword until Success    seleniumlibrary.click element               //*[@id="ajax-modal"]/div/div/div[2]/div/div/div/form/div[6]/div/label
        scroll element into view    ${CREATETARGETAUDIENCE-SELECCURRENTLOCATION}
       Run Keyword until Success    seleniumlibrary.click element                 ${CREATETARGETAUDIENCE-SELECCURRENTLOCATION}
Increase Radius
       Run Keyword until Success    seleniumlibrary.double Run Keyword until Success    seleniumlibrary.click element          ${CREATETARGETAUDIENCE-INCREASERADIUS}

repeat
       repeat keyword            15times   Increase Radius
       
Save Target Audience
       Run Keyword until Success    seleniumlibrary.click element                 ${CREATETARGETAUDIENCE-SAVETARGETAUDIENCE}



Select Male Gender Type
       Run Keyword until Success    seleniumlibrary.click element                 ${CREATE_TARGET_AUDIENCE_SELECT_GENDER_TYPE_Male}

Select Nationalities
       select from list by label     ${CREATETARGET_AUDIENCE-SELECT_NATIONALITIES}      @{CREATETARGET_AUDIENCE-SELECT_NATIONALITIES_TYPES}
       Save Target Audience

Select Age Range
#   mouse down    ${AGE_SLIDER_FROM}
    drag and drop by offset    ${AGE_SLIDER_FROM}    ${SLIDE_RANGE_LEFT}    ${SLIDE_RANGE_RIGHT}