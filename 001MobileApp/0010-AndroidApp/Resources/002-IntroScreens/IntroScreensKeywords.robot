*** Settings ***
Library    AppiumLibrary
Library    DatabaseLibrary
Library    OperatingSystem
Library    JSONLibrary
Resource    ./IntroScreensLocators.robot
Resource    ./IntroScreensAssertions.robot
Resource    ../000-Common/AppCommonKeyWords.robot
Resource    ../../../../002Web/Resources/000-Common/CommonKeyWords.robot
Resource    ../../../../002Web/Resources/000-Common/CommonVariables.robot

*** Keywords ***
#Select Country Screen
Get Countries from database
    connect to database     pymysql     ${DBName}     ${DBUser}     ${DBPass}     ${DBHost}     ${DBPort}
    ${OutPut}=  query    select id from countries
    log to console    ${OutPut}
    :FOR    ${Row-index}    IN RANGE    1



    ${Value}=   get length    ${OutPut}
#    ${Value}=   get length    ${OutPut}
#    log to console    ${OutPut}
    log to console    ${Value}
#    log to console    The extracted value is: ${Value}
#    ${name}=    query    select name from country_translations where locale = 'en' and country_id = '${Value}';
#    log to console    ${name}
    disconnect from database

Assert open select country screen
    Assert select country header is correct
    Assert next button is disable until choose country
    Assert each country appear with his flag
    asser kashkom logo appears

Assert select country header is correct
    Run Keyword until Success   AppiumLibrary.wait until page contains     ${HEADER_SelectCountry_TEXT}

Assert next button is disable until choose country
    Run Keyword until Success   AppiumLibrary.wait until page contains element     //android.widget.Button[@resource-id='com.qpn.kamashka:id/nextBtn' and @enabled='false']

Assert each country appear with his flag
    ${first country is exist}=     run keyword and return status    AppiumLibrary.wait until page contains element      com.qpn.kamashka:id/item_layout

Click on empty area on select country screen
    Run Keyword until Success   AppiumLibrary.click element    //android.widget.TextView[@resource-id='com.qpn.kamashka:id/selectLabel']
    Run Keyword until Success   AppiumLibrary.click element    //android.widget.ImageView[@resource-id='com.qpn.kamashka:id/logoIv']

Click on first country in select country screen
    Run Keyword until Success   AppiumLibrary.click element    ${SelectCountry_Kuwait_Button}
choose Kuwait country
    #Assert Kuwait country is first choice
     Run Keyword until Success    AppiumLibrary.wait until page contains    ${KUWAIT_COUNTRY_TEXT}
    #Click on Kuwait as first choice
    Click on first country in select country screen

Assert Kuwait country choosed successfully
    Run Keyword until Success   AppiumLibrary.wait until page contains element     //android.widget.LinearLayout[@index='0']//android.widget.ImageView[@resource-id='com.qpn.kamashka:id/radioSelected']

Assert Kuwait country unselcted
    Run Keyword until Success   AppiumLibrary.wait until page does not contain element     //android.widget.LinearLayout[@index='0']//android.widget.ImageView[@resource-id='com.qpn.kamashka:id/radioSelected']

Choose gizare country
    Run Keyword until Success   AppiumLibrary.click element    ${SelectCountry_Gizare_Button}

Assert gizare country choosed successfully
    Run Keyword until Success   AppiumLibrary.wait until page contains element     //android.widget.LinearLayout[@index='1']//android.widget.ImageView[@resource-id='com.qpn.kamashka:id/radioSelected']

Assert next button is enable when choose country
     Run Keyword until Success  AppiumLibrary.wait until page contains element     //android.widget.Button[@resource-id='com.qpn.kamashka:id/nextBtn' and @enabled='true']

click on next in select country screen
     Run Keyword until Success  AppiumLibrary.click element       ${SelectCountry_Next_Button}

#OnBoarding screens
Assert starting onboarding screens
    Run Keyword until Success   AppiumLibrary.wait until page contains     ${HEADER_OnBoarding_TEXT}
    Run Keyword until Success   AppiumLibrary.wait until page contains element      //android.widget.LinearLayout[@index='0' and @selected='true']

pass first onboarding screens
    Run Keyword until Success   AppiumLibrary.click element     ${Onboarding_FirstScreen_Next}
    sleep    1s

assert navigate to second onboarding screen
    Run Keyword until Success   AppiumLibrary.wait until page contains element      //android.widget.LinearLayout[@index='1' and @selected='true']

pass second onboarding screens
    Run Keyword until Success   AppiumLibrary.click element     ${Onboarding_SecondScreen_Next}
    sleep    1s

assert navigate to third onboarding screen
        Run Keyword until Success   AppiumLibrary.wait until page contains element      //android.widget.LinearLayout[@index='2' and @selected='true']

pass third onboarding screens
    Run Keyword until Success   AppiumLibrary.click element     ${Onboarding_ThirdScreen_Start}
    sleep    1s

