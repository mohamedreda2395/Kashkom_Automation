*** Settings ***
Resource     ../../../../../002Web/Resources/000-Common/CommonKeyWords.robot
Library      SeleniumLibrary
Resource    ./CategoriesAssertions.robot
Resource    ./CategoriesLocators.robot
#Resource    ../../0011111LandingPage/LandingPage.robot
Resource    ../../00111-Home/HomeKeywords.robot

*** Keywords ***
Verify Categories Page Is Opened Successfully
        wait until page contains    ${CATEGORIES_PAGE_HEADER}

Skip Categories Page
    Run Keyword until Success    seleniumlibrary.click element    ${SKIP_BTN_FOR_CATEGORIES}

Verify Categories Page Is Skipped Successfully
        wait until page does not contain    ${CATEGORIES_PAGE_HEADER}
        HomeKeywords.Verify Home Page Loaded