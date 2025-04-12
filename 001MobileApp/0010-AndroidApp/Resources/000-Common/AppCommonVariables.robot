*** Settings ***
Library     AppiumLibrary

*** Variables ***


#openAppDetails

${APPIUM_SERVER_URL}    http://localhost:4723/wd/hub
${PLATFORM_NAME}    platformName=Android
${APP_ACTIVITY}     appActivity=com.qpn.kamashka.featureIntro.IntroActivity
${DEVICE_NAME}      deviceName=emulator-5554
${APP_PACKAGE}     appPackage=com.qpn.kamashka
${AUTOMATOR_TYPE}     UiAutomator2

#${LANGUAGE}      ar
${LANGUAGE}      en

