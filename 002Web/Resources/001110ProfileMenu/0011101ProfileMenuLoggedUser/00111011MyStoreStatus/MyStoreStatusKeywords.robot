*** Settings ***
Resource           ../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./MyStoreStatusLocators.robot
Resource    ./MyStoreStatusAssertion.robot
Resource    ././001110111StoreDashboard/StoreDashboardKeywords.robot
Resource    ././001110111StoreDashboard/StoreDashboard.robot

*** Keywords ***


Verify My Store Status Page Opened
    wait until page contains    ${MY_STORE_PAGE_TITLE}


Click On Dashboard Button
    Run Keyword until Success    seleniumlibrary.click element    ${MY_STORE_DASHBOARD_BUTTON}
      Verify That Store Dashboard Page Is Successfully Loaded



Click On Preview My Store Button
    Run Keyword until Success    seleniumlibrary.click element    ${MY_STORE_PREVIEW_MY_STORE_BUTTON}




#Verify Dashboard PageOpened
#
#    Verify Dashboard Header Text Appear on Dashboard Page
#    Verify By Kamashka Text Appear on Dashboard Page




