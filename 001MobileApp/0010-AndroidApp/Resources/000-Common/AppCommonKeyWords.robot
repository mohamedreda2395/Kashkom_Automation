*** Settings ***
Library     AppiumLibrary
Resource    ./AppCommonVariables.robot
Resource    ./AppCommonAssertions.robot
Resource    ./AppCommonLocators.robot
Resource    ../../../../002Web/Resources/000-Common/CommonKeyWords.robot


*** Keywords ***

Configure Test Timing
    AppiumLibrary.set appium timeout    10s
Open App

    open application    http://localhost:4723/wd/hub    platformName=Android    deviceName=emulator-5554    appPackage=com.qpn.kamashka     appActivity=com.qpn.kamashka.featureIntro.IntroActivity     automationName=UiAutomator2



Close App
    Run Keyword And Ignore Error    AppiumLibrary.Close Application

Assert request notification permission
    Run Keyword until Success   appiumlibrary.wait until element is visible     //android.widget.TextView[contains(@text, "${HEADER_Notification_Permission_TEXT}")]

Assert request location permission
    Run Keyword until Success   appiumlibrary.wait until element is visible     //android.widget.TextView[contains(@text, "${HEADER_Location_Permission_TEXT}")]

Allow notification permission
    Run Keyword until Success   appiumlibrary.click element    ${Notification_Permission_Allow_Button}

Don't allow notification permission
    Run Keyword until Success   appiumlibrary.click element    ${Notification_Permission_Don'tAllow_Button}

Location permission allow while using app
    Run Keyword until Success   appiumlibrary.click element    ${Location_Permission_WhileUsing_Button}

Location permission only this time
    Run Keyword until Success   appiumlibrary.click element    ${Location_Permission_OnlyThisTime_Button}

Location permission don't allow
    Run Keyword until Success   appiumlibrary.click element    ${Location_Permission_Don'tAllow_Button}

Asser kashkom logo appears
    Run Keyword until Success   appiumlibrary.wait until element is visible     ${Kashkom_Logo}

