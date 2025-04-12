*** Settings ***
Library    AppiumLibrary
Resource    ../000-Common/AppCommonKeyWords.robot
Resource    ./IntroScreensKeywords.robot
Resource    ../003-UserManagement/UserManagementKeywords.robot

*** Keywords ***

handle app to login screen
    allow notification permission
    Assert select country header is correct
    Assert next button is disable until choose country
    Choose Kuwait country
    Assert next button is enable when choose country
    click on next in select country screen
    Location permission only this time
    Assert starting onboarding screens
    pass first onboarding screens
    assert navigate to second onboarding screen
    pass second onboarding screens
    assert navigate to third onboarding screen
    pass third onboarding screens
    Assert open login screen

