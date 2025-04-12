*** Settings ***
Library     SeleniumLibrary
Resource    ./SearchAssertions.robot
Resource    ./SearchLocators.robot
Resource    ./SearchKeywords.robot
Resource    ../001-SharedModules/0011-Header/001111-CreatePostAndStore/0011111-CreatePost/CreatePostKeyWords.robot

*** Keywords ***
Search for user
      [Arguments]                  ${SEARCH-FOR-USER-TEXT-ARG}=${SEARCH-FOR-USER-TEXT}
      Search user                  ${SEARCH-FOR-USER-TEXT-ARG}
      Delete Search
Search for store
     [Arguments]                 ${search-for-stores-text-arg}=${SEARCH-FOR-STORE-TEXT}
      Search store               ${search-for-stores-text-arg}
      Delete Search
Search for group
     [Arguments]                   ${SEARCH-FOR-GROUPS-TEXT-ARG}=${SEARCH-FOR-GROUPS-TEXT}
      Search groups                ${SEARCH-FOR-GROUPS-TEXT-ARG}
      Delete Search
Search for post from global search
     [Arguments]                    ${search-for-posts-text-arg}=${AUTO_POST_TITLE}
       Search posts                 ${search-for-posts-text-arg}
       Delete Search
       wait until page contains     ${AUTO_POST_TITLE}
Scroll
       Scroll down


