*** Settings ***
Resource           ../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./PostManagerLocators.robot
Resource    ./PostManagerAssertions.robot
Resource    ../../../001-SharedModules/0011-Header/001111-CreatePostAndStore/0011111-CreatePost/CreatePostKeyWords.robot

*** Keywords ***

verify Post Manager Page Loaded Suceesfully
        wait until page contains               ${POST_MANAGER_POST_MANAGER_TEXT_APPEAR}
        wait until element is visible          ${POST_MANAGER_ACTIVE_Tab_APPEAR}
        wait until element is visible          ${POST_MANAGER_PENDING_Tab_APPEAR}
        wait until element is visible          ${POST_MANAGER_FINISHED_Tab_APPEAR}


Assert For Post Card Showing
    wait until element is enabled              ${POST_MANAGER_POST_CARD_APPEAR}
    wait until page contains                   ${AUTO_POST_TITLE}
Inser Post Title On Search Bar
    Run Keyword until Success    seleniumlibrary.input text                                 ${POST_MANAGER_SEARCH_BAR}       ${AUTO_POST_TITLE}


verify That The Searched Post Appear Successfully
    page should not contain                        ${POST_MANAGER_POST_NOT_FOUND_NOT_APPEAR}

Display Post Statistics And Data
     Run Keyword until Success    seleniumlibrary.click element                           ${POST_MANAGER_DISPLAY_POST_DATA_3DOTS}





