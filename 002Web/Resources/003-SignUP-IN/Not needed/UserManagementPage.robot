*** Settings ***
Library     SeleniumLibrary
Resource    ./UserManagementKeywords.robot
Resource    ../../../002Web/Resources/001-SharedModules/0011-Header/HeaderKeywords.robot

*** Keywords ***

#Verify Profile Menu Appear Successfully
#   UserManagementKeywords.Verify Profile Menu Pragraph Appear Successfully


Navigate to login page
        verify That Header is Successfully Appear
        click on login button



