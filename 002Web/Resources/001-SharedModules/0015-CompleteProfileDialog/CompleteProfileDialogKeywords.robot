*** Settings ***
Resource          ../../../../002Web/Resources/000-Common/CommonKeyWords.robot
Library    SeleniumLibrary
Resource    ./CompleteProfileDialogLocators.robot
Resource    ./CompleteProfileDialogAssertions.robot
Resource    ../../../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/ProfileKeywords.robot

*** Keywords ***
Verify Complete Profile Dialog Is Opened Successfully
        wait until page contains    ${COMPLETE_ACC_DIALOG_HEADER}

Close Complete Profile Dialog
    Run Keyword until Success    seleniumlibrary.click element    ${CLOSE_BTN_FOR_COMPLETE_PROFILE}

Verify Complete Profile Dialog Is Skipped Successfully
        wait until page does not contain    ${COMPLETE_ACC_DIALOG_HEADER}

Navigate To Edite Profile Through Complete Profile Dialog
        Run Keyword until Success    SeleniumLibrary.click element    ${COMPLETE_PROFILE_BTN}
        Verify Edite Profile Page Loaded Successfully

