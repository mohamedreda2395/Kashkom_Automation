*** Settings ***
Resource           ../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library    SeleniumLibrary
Resource   ./ShareAndWinLocators.robot
Resource   ./ShareAndWinAssertions.robot

*** Keywords ***
Click On Share Button
#    Run Keyword until Success    seleniumlibrary.click element    //div[@aria-label='1 / 5']//div[@class='data-section']//a[@class='btn btn-primary ajax-modal'][normalize-space()='Share & win']
    Run Keyword until Success    seleniumlibrary.click element    ${SHARE_BUTTON}
    Verify Share Options Popup Opened Successfully

Select Share To Friend Button
    Run Keyword until Success    seleniumlibrary.click element    ${SHARE_TO_FRIEND_BUTTON}
    Verify URL Of Post Appear Successfully
Select Share On Kamashka
    Run Keyword until Success    seleniumlibrary.click element    ${SHARE_ON_Kamashka}
    Verify Post Is Shared Successfully

Select Share To Group
    Run Keyword until Success    seleniumlibrary.click element    ${SHARE_TO_GROUP}
    Verify List Of Groups Appears Successfully
Click On Copy Icon
    Run Keyword until Success    seleniumlibrary.click element    ${COPY-LINK-BTN}
    Verify URL Of Post Copied Successfully

Click On Close Button
    Run Keyword until Success    seleniumlibrary.click element    ${CLOSE_BUTTON_FOR_SHARE_OPTIONS}
    Verify Share Optins Popup Closed Successfully

Click On Close Button For Post Full Screen
     Run Keyword until Success    seleniumlibrary.click element   ${CLOSE_BUTTON_FOR_POST_FULL_SCREEN}
     Verify Post Full Screen Closed Successfully
