*** Settings ***
Library     SeleniumLibrary
Resource  ./CreatePostAndStoreKeywords.robot
Resource  ../../../00111-Home/HomeKeywords.robot

*** Keywords ***

Go To Create Post Page
        HomeKeywords.Click On Create Button
        CreatePostAndStoreKeywords.Verify Popup Of Create Post And Store Appear Successfully
        CreatePostAndStoreKeywords.Click On Create Post Button