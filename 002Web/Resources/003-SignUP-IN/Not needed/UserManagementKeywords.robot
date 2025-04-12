*** Settings ***
Resource           ../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./UserManagementAssertions.robot
Resource    ./UserManagementLocators.robot

*** Keywords ***

#Verify Profile Menu Pragraph Appear Successfully
#        wait until page contains                  ${HEADER_DRPDOWN_MENU_PRAGRAPH}
#        wait until page contains                  ${HEADER_DRPDOWN_MENU_PRAGRAPH_TEXT}

Click On Login Button
        SeleniumLibrary.CLICK ELEMENT             ${HEADER_LOGIN_BUTTON}
#Click On Register Button
#        SeleniumLibrary.CLICK ELEMENT             ${HEADER_REGISTER_BUTTON}

Click On Social Login Facebook Button
        SeleniumLibrary.CLICK ELEMENT             ${HEADER_SOCIAL_FACEBOOK_BUTTON}
Click On Social Login Google Button
        SeleniumLibrary.CLICK ELEMENT             ${HEADER_SOCIAL_GOOGLE_BUTTON}
