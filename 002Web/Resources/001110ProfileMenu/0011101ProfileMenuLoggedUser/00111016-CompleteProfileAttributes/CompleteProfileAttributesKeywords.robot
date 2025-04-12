*** Settings ***
Resource           ../../../../../002Web/Resources/000-Common/CommonKeyWords.robot
Library     SeleniumLibrary
Resource    ./CompleteProfileAttributesAssertions.robot
Resource    ./CompleteProfileAttributesLocators.robot
Resource    ../../../001-SharedModules/0011-Header/Header.robot




*** Keywords ***

Insert Profile Date Of Birth
    Run Keyword until Success    SeleniumLibrary.click element    ${DOB_FIELD}
    SeleniumLibrary.wait until page contains element    ${DOB_DATE_PICKER}
    Run Keyword until Success    SeleniumLibrary.click element    ${DATE_PICKER_YEAR_LIST}
    Run Keyword until Success    SeleniumLibrary.click element    ${1995_VALUE}
    Run Keyword until Success    SeleniumLibrary.click element    ${DAY_10}

Select Profile Gender
    Run Keyword until Success    SeleniumLibrary.click element    ${MALE_GENDER}

Select Profile Nationality
    Run Keyword until Success    SeleniumLibrary.click element    ${NATIONALITY_FIELD}
    Run Keyword until Success    SeleniumLibrary.input text       ${NATIONALITY_SEARCH_FIELD}    ${KUWAITI_OPTION}
    Run Keyword until Success    SeleniumLibrary.click element    ${NATIONALITY_SEARCH_RESULT}

Select Profile Governorate
    Run Keyword until Success    SeleniumLibrary.click element    ${GOVERNORATE_FIELD}
    Run Keyword until Success    SeleniumLibrary.input text       ${GOVERNORATE_SEARCH_FIELD}    ${ALAHMADI_OPTION}
    Run Keyword until Success    SeleniumLibrary.click element    ${GOVERNORATE_SEARCH_RESULT}

Select Profile Area
    Run Keyword until Success    SeleniumLibrary.click element    ${AREA_FIELD}
    Run Keyword until Success    SeleniumLibrary.input text     ${AREA_SEARCH_FIELD}    ${AHMADI_OPTION}
    Run Keyword until Success    SeleniumLibrary.click element    ${AREA_SEARCH_RESULT}
Click on Save btn
    Run Keyword until Success    SeleniumLibrary.click element    ${SAVE_PROFILE_BTN}
    SeleniumLibrary.wait until page contains    Record updated successfully
