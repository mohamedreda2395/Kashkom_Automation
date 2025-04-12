*** Settings ***
Resource           ../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library    SeleniumLibrary
Resource   ../../001-SharedModules/0011-Header/HeaderKeywords.robot
Resource    ../UserManagementKeywords.robot
Resource   ./RegisterAssertions.robot
Resource    ./RegisterLocators.robot
Resource    ../../001-SharedModules/0012-OtpPage/OtpPageKeywords.robot
Resource    ../../../../002Web/Resources/003-UserManagement/0011101-Login/LoginKeywords.robot
Library         DateTime
Library    BuiltIn
*** Variables ***
${AUTO_REGISTER_EMAIL}=    ${REGISTER_EMAIL_TEXT}
${AUTO_REGISTER_USER_NAME}=    ${USER_NAME}
*** Keywords ***

Register With Valid Credentials
#        [Arguments]             ${password}
        Verify SignUp Page Loaded Successfully
        Enter User Name
#        Enter Mobile Number
#        Enter Email
#        Enter Password          ${password}
#        Set Date Of Birth Registered User
#       Select Gender
        Submit Register




Verify SignUp Page Loaded Successfully
     WAIT UNTIL PAGE CONTAINS    ${HEADER_REGISTER_PAGE_TEXT}

Remove Special Characters
    [Arguments]    ${input_string}
    ${cleaned_string}=    Evaluate    re.sub(r'\W+', '', '${input_string}')    re
    [Return]    ${cleaned_string}


Generat User Name
        ${USER_NUM}=    Evaluate    ''.join([str(i) for i in random.sample(range(1, 10), 5)])    random
        ${AUTO_REGISTER_USER_NAME}=    Set Variable    user${USER_NUM}
        ${AUTO_REGISTER_USER_NAME}=    Remove Special Characters    ${AUTO_REGISTER_USER_NAME}
        Set Global Variable    ${AUTO_REGISTER_USER_NAME}
Enter User Name
        Generat User Name
        Run Keyword until Success    seleniumlibrary.input text                    ${REGISTER_USER_NAME_FIELD}   ${AUTO_REGISTER_USER_NAME}



#Generat Email
#            ${current_date}=    DateTime.Get Current Date        result_format=%Y%m%d.%H%M%S
#            set global variable      ${AUTO_REGISTER_EMAIL}    ${REGISTER_EMAIL_TEXT}${current_date}${REGISTER_EMAIL_DOMAIN}
#
#Enter Email
#        generat email
#        Run Keyword until Success    seleniumlibrary.input text    ${Email_FIELD}     ${AUTO_REGISTER_EMAIL}



Generate Mobile Random number
   ${numbers}=    Evaluate    random.sample(range(1, 9), 8)    random

Login With Valid new Mobile Num
    Enter Mobile Number
    Submit Login

Trim Spaces
    [Arguments]    ${input_string}
    ${trimmed_string}=    Evaluate    '${input_string}'.strip()
    [Return]    ${trimmed_string}

Enter Mobile Number
    ${MOBILE_NUM}=    Evaluate    ''.join(str(i) for i in random.sample(range(1, 9), 7))    random
    ${MOBILE_NUM}=    Trim Spaces    ${MOBILE_NUM}
    Run Keyword Until Success    SeleniumLibrary.Input Text    ${MOBILE_NUMBER_FIELD}    4${MOBILE_NUM}

#Enter Password
#         [Arguments]         ${password}
#        input password                ${REGISTER_USER_PASSWORD}            ${password}

#Select Gender
#        Run Keyword until Success    seleniumlibrary.click element               ${GENDER_MALE}

#Set Date Of Birth Registered User
#    Run Keyword until Success    seleniumlibrary.click element               ${DATE_OF_BIRTH_FIElD}
#    select from list by value   ${YEARS_LIST}    1944
#    Run Keyword until Success    seleniumlibrary.click element               ${DAY_OF_BIRTH}


Submit Register
        Run Keyword until Success    seleniumlibrary.click element                 ${REGISTER_BUTTON}
        Verify OTP Page Is Opened Successfully


