*** Settings ***
Library    SeleniumLibrary
Resource    ./CompleteProfileDialogKeywords.robot

*** Keywords ***
Skip Complete profile Page
        Verify Complete Profile Dialog Is Opened Successfully
        Close Complete Profile Dialog
        Verify Complete Profile Dialog Is Skipped Successfully
        Handle Suggestions Dialog If Present


