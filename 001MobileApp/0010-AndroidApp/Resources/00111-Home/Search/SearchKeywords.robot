*** Settings ***
Resource           ../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./SearchAssertions.robot
Resource    ./SearchLocators.robot

*** Keywords ***

Search user

     wait until page contains      ${HOME-PAGE-ASSERT}
     Run Keyword until Success    seleniumlibrary.input text                    ${SEARCH-FIELD}                    ${SEARCH-FOR-USER-TEXT}

     Run Keyword until Success    seleniumlibrary.click element                 ${SEARCH-BUTTON}
     Run Keyword until Success    seleniumlibrary.click element                 ${SEARCH-USER-TAB}
     wait until element is enabled    ${SEARCH-FOLLOW-BUTTON}
     Run Keyword until Success    seleniumlibrary.click element                 ${SEARCH-FOLLOW-BUTTON}
     wait until page contains    Unfollow

Delete Search
    Run Keyword until Success    seleniumlibrary.click element           ${SEARCH-FIELD-DOUBLE-CLICK }
    press keys                     ${SEARCH-FIELD-DOUBLE-CLICK }     ${SEARCH-DELETE-BUTTON}


Search store
      [Arguments]                 ${search-for-stores-text-arg}
     Run Keyword until Success    seleniumlibrary.input text                    ${SEARCH-FIELD}                   ${search-for-stores-text-arg}
     Run Keyword until Success    seleniumlibrary.click element                 ${SEARCH-BUTTON}
     Run Keyword until Success    seleniumlibrary.click element                 ${SEARCH-STORE-TAB}

Search groups
     Run Keyword until Success    seleniumlibrary.input text                   ${SEARCH-FIELD}                    ${SEARCH-FOR-GROUPS-TEXT}
     Run Keyword until Success    seleniumlibrary.click element                ${SEARCH-BUTTON}
     Run Keyword until Success    seleniumlibrary.click element                ${SEARCH-GROUP-TAB}

Search posts
    [Arguments]                  ${search-for-posts-text-arg}
     Run Keyword until Success    seleniumlibrary.input text                  ${SEARCH-FIELD}                      ${search-for-posts-text-arg}
     Run Keyword until Success    seleniumlibrary.click element               ${SEARCH-BUTTON}
     Run Keyword until Success    seleniumlibrary.click element               ${SEARCH-POST-TAB}

Scroll down
     execute javascript          ${SEARCH-SCROLL-DOWN}

Click on Show Post Button
    Run Keyword until Success    seleniumlibrary.click element          ${SEARCH-PAGE_RESULT_SHOW_POST_BUTTON}