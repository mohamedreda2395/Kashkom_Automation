*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Load
    Go to   https://test.kamashka.com/en

Verify Page Loaded
     WAIT UNTIL PAGE CONTAINS   Create



