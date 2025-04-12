*** Settings ***
Resource           ../../../../../../002Web/Resources/000-Common/CommonKeyWords.robot
Library     SeleniumLibrary
Resource    ./CompleteProfileAssertions.robot
Resource    ./CompleteProfileLocators.robot
#Resource    ../../../../008-SharedModules/0011-Header/Header.robot


*** Variables ***




*** Keywords ***


move to attributes section
    execute javascript          ${USER-PROFILE-SCROLL-TO-ATTRIBUTES }
    Run Keyword until Success    seleniumlibrary.click element               ${USER-PROFILE-CLICK-ON-ATTRIBUTES }
insert nationality
    press keys                 ${USER-PROFILE-PRESSKEY-RIGHT-ARROW }                     ${USER-PROFILE-PRESSKEY-RIGHT-ARROW-ASCIICODE}
    press keys                 ${USER-PROFILE-PRESSKEY-RIGHT-ARROW }                     ${USER-PROFILE-PRESSKEY-RIGHT-ARROW-ASCIICODE}
    WAIT UNTIL PAGE CONTAINS     ${USER-PROFILE-ASSERT-ON-Nationalities}
    Run Keyword until Success    seleniumlibrary.click element               ${USER-PROFILE-CLICK-ON-NATIONALITY }
    wait until page contains    ${USER-PROFILE-ASSERT-ON-Nationalities-DROPDOWN-LIST }
    Run Keyword until Success    seleniumlibrary.input text                  ${USER-PROFILE-NATIONALITY-SEARCH}                         ${USER-PROFILE-NATIONALITY-SEARCH-TEXT}
    press keys                  ${USER-PROFILE-NATIONALITY-PRESSKEY-ENTER}                 ${USER-PROFILE-NATIONALITY-PRESSKEY-ENTER-ASCIICODE}
    Run Keyword until Success    seleniumlibrary.click element              ${USER-PROFILE-NATIONALITY-SAVE-BUTTON}
insert governorate
    press keys                 ${USER-PROFILE-PRESSKEY-RIGHT-ARROW }                      ${USER-PROFILE-PRESSKEY-RIGHT-ARROW-ASCIICODE}
    press keys                 ${USER-PROFILE-PRESSKEY-RIGHT-ARROW }                      ${USER-PROFILE-PRESSKEY-RIGHT-ARROW-ASCIICODE}
    wait until page contains    ${USER-PROFILE-ASSERT-ON-GOVERNORAE}
    Run Keyword until Success    seleniumlibrary.click element               ${USER-PROFILE-CLICK-ON-GOVERNORAE }
    wait until page contains     ${USER-PROFILE-ASSERT-ON-GOVERNORAE-DROPDOWN-LIST }
    Run Keyword until Success    seleniumlibrary.input text                  ${USER-PROFILE-GOVERNORAE-SEARCH}                         ${USER-PROFILE-GOVERNORAE-SEARCH-TEXT}
    press keys                  ${USER-PROFILE-GOVERNORAE-PRESSKEY-ENTER}                 ${USER-PROFILE-NATIONALITY-PRESSKEY-ENTER-ASCIICODE}
    Run Keyword until Success    seleniumlibrary.click element               ${USER-PROFILE-GOVERNORAE-SAVE-BUTTON}
insert area
     press keys                   ${USER-PROFILE-PRESSKEY-RIGHT-ARROW }                   ${USER-PROFILE-PRESSKEY-RIGHT-ARROW-ASCIICODE}
     wait until page contains      ${USER-PROFILE-ASSERT-ON-AREA}
     Run Keyword until Success    seleniumlibrary.click element                ${USER-PROFILE-CLICK-ON-AREA}
     wait until page contains     ${USER-PROFILE-ASSERT-ON-AREA-DROPDOWN-LIST }
     Run Keyword until Success    seleniumlibrary.input text                  ${USER-PROFILE-AREA-SEARCH}                             ${USER-PROFILE-AREA-SEARCH-TEXT}
     Run Keyword until Success    seleniumlibrary.click element                   ${USER-PROFILE-AREA-PRESSKEY-ENTER}
     Run Keyword until Success    seleniumlibrary.click element                ${USER-PROFILE-AREA-SAVE-BUTTON}

verify mobile number
        wait until element is enabled                                        ${USER-PROFILE-VERIFY-NUMBER-BUTTON}
    Run Keyword until Success    seleniumlibrary.click element               ${USER-PROFILE-VERIFY-NUMBER-BUTTON}
    Run Keyword until Success    seleniumlibrary.input text                  ${USER-PROFILE-VERIFY-NUMBER-OTP-FIELD1}                          ${USER-PROFILE-VERIFY-NUMBER-OTP-FIELD1-TEXT}
    Run Keyword until Success    seleniumlibrary.input text                  ${USER-PROFILE-VERIFY-NUMBER-OTP-FIELD2}                          ${USER-PROFILE-VERIFY-NUMBER-OTP-FIELD2-TEXT}
    Run Keyword until Success    seleniumlibrary.input text                  ${USER-PROFILE-VERIFY-NUMBER-OTP-FIELD3}                          ${USER-PROFILE-VERIFY-NUMBER-OTP-FIELD3-TEXT}
    Run Keyword until Success    seleniumlibrary.input text                  ${USER-PROFILE-VERIFY-NUMBER-OTP-FIELD4}                          ${USER-PROFILE-VERIFY-NUMBER-OTP-FIELD4-TEXT}
    Run Keyword until Success    seleniumlibrary.click element               ${USER-PROFILE-CATEGORY-SKIP-BUTTON}


open user profile
       Navigate To Profile Page

insert category
       Run Keyword until Success    seleniumlibrary.click element                ${USER-PROFILE-CLICK-ON-EDIT-ROFILE}
       wait until page contains     ${USER-PROFILE-ASSERT-ON-EDIT-PAGE}
       execute javascript           ${EDIT-PROFILE-SCROLL-TO-CATEGORIES }
       wait until page contains     ${USER-PROFILE-ASSERT-ON-CATEGORIES-SECTION}
       Run Keyword until Success    seleniumlibrary.click element                ${EDIT-PROFILE-SELECT-CATEGORY-SHOPPING }
       Run Keyword until Success    seleniumlibrary.click element                ${EDIT-PROFILE-SELECT-CATEGORY-Music }
       Run Keyword until Success    seleniumlibrary.click element                ${EDIT-PROFILE-SELECT-CATEGORY-Football }
       Run Keyword until Success    seleniumlibrary.click element                ${EDIT-PROFILE-SELECT-CATEGORY-SOCIALMEDIA }
       Run Keyword until Success    seleniumlibrary.click element                ${EDIT-PROFILE-SELECT-CATEGORY-Family }
       Run Keyword until Success    seleniumlibrary.click element                ${EDIT-PROFILE-SELECT-CATEGORY-Movies }
       Run Keyword until Success    seleniumlibrary.click element                ${EDIT-PROFILE-SELECT-CATEGORY-Dance }
       Run Keyword until Success    seleniumlibrary.click element                ${EDIT-PROFILE-SAVE-BUTTON}

