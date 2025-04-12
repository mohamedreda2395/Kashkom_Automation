*** Settings ***
Library     SeleniumLibrary
Library     AppiumLibrary
Library    Process

Resource    ../../001MobileApp/0010-AndroidApp/Resources/000-Common/AppCommonKeyWords.robot
Resource    ../../001MobileApp/0010-AndroidApp/Resources/002-IntroScreens/IntroScreensKeywords.robot
Resource    ../../001MobileApp/0010-AndroidApp/Resources/002-IntroScreens/IntroScreensPage.robot
Resource    ../../001MobileApp/0010-AndroidApp/Resources/003-UserManagement/UserManagementPage.robot


Test Setup      AppCommonKeywords.Open App
Test Teardown    AppCommonKeywords.Close App

*** Test Cases ***

Check next button is clickable when user select country and navigate to onboarding screens when click on it
    [Tags]    Select Country      Regression
#    Assert request notification permission
#    allow notification permission
    Assert open select country screen
    choose kuwait country
    Assert Kuwait country choosed successfully
    click on next in select country screen
    Assert request location permission
    Location permission allow while using app
    Assert starting onboarding screens

#Check user not able to choose more than 1 country
#    [Tags]    Select Country      Regression    smoke
#    allow notification permission
#    Assert open select country screen
#    choose kuwait country
#    Assert Kuwait country choosed successfully
#    choose gizare country
#    Assert gizare country choosed successfully
#
#    #Assert Kuwait country unselcted
#
#Check user can't unselect country
#    [Tags]    Select Country      Regression
#    allow notification permission
#    Assert open select country screen
#    choose kuwait country
#    Assert Kuwait country choosed successfully
#    choose kuwait country
#    Click on empty area on select country screen
#    Assert Kuwait country choosed successfully
#
#Check nothing happen when user click on next button when disable
#    [Tags]    Select Country      Regression
#    allow notification permission
#    Assert open select country screen
#    click on next in select country screen
#    Assert open select country screen
#
#
#
#get12
#    [Tags]      database
#    get countries from database

