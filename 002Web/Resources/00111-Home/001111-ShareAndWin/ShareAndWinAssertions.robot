*** Settings ***
Library    SeleniumLibrary
Resource    ./ShareAndWinLocators.robot

*** Keywords ***
Verify Share Options Popup Opened Successfully
    wait until page contains     ${SHARE_OPTIONS_POPUP_HEADER}

Verify URL Of Post Appear Successfully
    wait until element is visible    ${FACEBOOK_ICON}

Verify URL Of Post Copied Successfully
     wait until page contains     Link copied

Verify Share Optins Popup Closed Successfully
    wait until element is not visible    ${SHARE_OPTIONS_FRAME}

Verify Post Full Screen Closed Successfully
    wait until page contains    Search results

Verify Post Is Shared Successfully
    wait until page contains    Shared successfully

Verify List Of Groups Appears Successfully
    wait until page contains     My Groups