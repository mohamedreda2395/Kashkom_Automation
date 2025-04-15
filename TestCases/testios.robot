*** Settings ***
Library           AppiumLibrary

*** Variables ***
${REMOTE_URL}     http://localhost:4723/wd/hub
${PLATFORM_NAME}  iOS
${DEVICE_NAME}    MyiPhone16Plus
${PLATFORM_VERSION}  18.4
${APP}            /Users/mohamedreda/Downloads/Kashkom\ 2.app
${AUTOMATION_NAME}  XCUITest

*** Test Cases ***
Launch iOS App
    [Tags]    smoke
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP}    automationName=${AUTOMATION_NAME}
    Sleep    5s
    Close Application
