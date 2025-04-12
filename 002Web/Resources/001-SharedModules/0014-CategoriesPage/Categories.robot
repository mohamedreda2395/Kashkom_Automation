*** Settings ***
Library    SeleniumLibrary
Resource    ./CategoriesKeywords.robot

*** Keywords ***
Close Categories Page
        Verify Categories Page Is Opened Successfully
        Skip Categories Page
        Verify Categories Page Is Skipped Successfully