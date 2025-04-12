*** Settings ***
Library    SeleniumLibrary
Resource    ./RegisterKeywords.robot
Resource    ../../../../002Web/Resources/003-UserManagement/UserManagementPage.robot
*** Keywords ***
Register With new phone num To WebSite
#    [Arguments]              ${password}=Test@1234
    Navigate to login page
    Login With Valid new Mobile Num


Complete Register Cycle
    Register With new phone num To WebSite
    Register With Valid Credentials