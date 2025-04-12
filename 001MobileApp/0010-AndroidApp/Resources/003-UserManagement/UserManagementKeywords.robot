*** Settings ***
Library    AppiumLibrary
Resource    ./UserManagementLocators.robot
Resource    ./UserManagementAssertions.robot
Resource    ../../../../002Web/Resources/000-Common/CommonKeyWords.robot
Resource    ../000-Common/AppCommonKeyWords.robot

*** Keywords ***
#Login screen
assert need help button is exist
    Run Keyword until Success   AppiumLibrary.wait until page contains     ${HEADER_NeedHelp_TEXT}

Assert continue as a guest button is exist
    Run Keyword until Success   AppiumLibrary.wait until page contains     ${HEADER_ContinueAsGuest_TEXT}

Assert headers is exist
    Run Keyword until Success   AppiumLibrary.wait until page contains     ${HEADER_Login_TEXT}
    Run Keyword until Success   AppiumLibrary.wait until page contains     ${HEADER_Login2_TEXT}

Assert login button is exist
    Run Keyword until Success   AppiumLibrary.wait until page contains     ${Button_Login_TEXT}

Assert login button is disable until insert mobile
    Run Keyword until Success   AppiumLibrary.wait until page contains element      //android.widget.Button[@resource-id='com.qpn.kamashka:id/nextBtn' and @enabled='false']

Assert open login screen
    Asser kashkom logo appears
    assert need help button is exist
    Assert continue as a guest button is exist
    Assert headers is exist
    Assert login button is exist
    Assert login button is disable until insert mobile

Insert exist mobile number
    [Arguments]    ${Login_Mobile}
    Run Keyword until Success   AppiumLibrary.click element    ${login_mobile_number}
    Run Keyword until Success   AppiumLibrary.input text    ${login_mobile_number}    	${Login_Mobile}

Insert new mobile number
    [Arguments]    ${SignUp_Mobile}
    Run Keyword until Success   AppiumLibrary.click element    ${login_mobile_number}
    Run Keyword until Success   AppiumLibrary.input text    ${login_mobile_number}    	${SignUp_Mobile}

Assert login button is enable after insert mobile
    Run Keyword until Success   AppiumLibrary.wait until page contains element      //android.widget.Button[@resource-id='com.qpn.kamashka:id/nextBtn' and @enabled='true']

click on login
    Run Keyword until Success   AppiumLibrary.click element    ${login_login_button}

Click on continue as a guest
    Run Keyword until Success   AppiumLibrary.click element    ${login_countinueasguest_button}

Click on need help
    Run Keyword until Success   AppiumLibrary.click element    ${login_needhelp_button}

click on login with facebook
    Run Keyword until Success   AppiumLibrary.click element    ${login_loginbtfacebook_button}

click on login with google
    Run Keyword until Success   AppiumLibrary.click element    ${login_loginbygoogle_button}

#SignUp screen
Assert open Signup screen
    [Arguments]    ${Mobile_Number}
    Asser kashkom logo appears
    Assert continue button is disable until insert fullname and gender
    Assert inserted mobile number appear correctly in signup screen OR otp screen       ${Mobile_Number}
    Run Keyword until Success   AppiumLibrary.wait until page contains     ${Header_SignUp_TEXT}
    Run Keyword until Success   AppiumLibrary.wait until page contains     ${Header_SignUp2_TEXT}
    Run Keyword until Success   AppiumLibrary.wait until page contains     ${Button_SignUp_Continue_TEXT}

Assert continue button is disable until insert fullname and gender
    Run Keyword until Success   AppiumLibrary.wait until page contains element      //android.widget.Button[@resource-id='com.qpn.kamashka:id/nextBtn' and @enabled='false']

Assert continue button is enable when insert fullname and gender
    Run Keyword until Success   AppiumLibrary.wait until page contains element      //android.widget.Button[@resource-id='com.qpn.kamashka:id/nextBtn' and @enabled='true']

Assert inserted mobile number appear correctly in signup screen OR otp screen
    [Arguments]    ${Mobile_Number}
    Run Keyword until Success   AppiumLibrary.wait until page contains element      //android.widget.EditText[contains(@text,"${Mobile_Number}")]

Insert full name in signup screen
    [Arguments]    ${Full_Name}
    Run Keyword until Success   AppiumLibrary.input text    ${SignUp_FullName_Text}    ${Full_Name}

Insert gender as male in sign up screen
    Run Keyword until Success   AppiumLibrary.click element    ${SignUp_Gender_Male_RadioButton}

Insert gender as female in sign up screen
    Run Keyword until Success   AppiumLibrary.click element    ${signup_gender_female_radiobutton}

click on edit number in signup screen
    Run Keyword until Success   AppiumLibrary.click element    ${SignUp_EditNumber_Button}

click on continue button in signup screen
    Run Keyword until Success   AppiumLibrary.click element    ${SignUp_Cotinue_Button}

#OTP SCREEN
Assert open OTP screen
    Asser kashkom logo appears
    Run Keyword until Success   AppiumLibrary.wait until page contains    ${Header_OTP_TEXT}
    Run Keyword until Success   AppiumLibrary.wait until page contains    ${Header_OTP2_TEXT}
    Run Keyword until Success   AppiumLibrary.wait until page contains    ${Button_SendOTPAgian_TEXT}
    Run Keyword until Success   AppiumLibrary.wait until page contains    ${Button_EditNumber_TEXT}
    Assert inserted mobile number appear correctly in signup screen OR otp screen
    #Assert first otp cell is focused
    Run Keyword until Success   AppiumLibrary.wait until page contains element      //android.widget.EditText[@resource-id='com.qpn.kamashka:id/etN1' and @focused='true' and @index='1']

insert valid OTP
    Run Keyword until Success   AppiumLibrary.click element    ${OTP_Field_1}
    Run Keyword until Success   AppiumLibrary.input text    ${OTP_Field_1}    1
    Run Keyword until Success   AppiumLibrary.click element   ${OTP_Field_2}
    Run Keyword until Success   AppiumLibrary.input text    ${OTP_Field_2}    2
    Run Keyword until Success   AppiumLibrary.click element   ${OTP_Field_3}
    Run Keyword until Success   AppiumLibrary.input text    ${OTP_Field_3}    3
    Run Keyword until Success   AppiumLibrary.click element   ${OTP_Field_4}
    Run Keyword until Success   AppiumLibrary.input text    ${OTP_Field_4}  4
    Run Keyword until Success   AppiumLibrary.click element   ${OTP_Field_5}
    Run Keyword until Success   AppiumLibrary.input text    ${OTP_Field_5}    5
    Run Keyword until Success   AppiumLibrary.click element   ${OTP_Field_6}
    Run Keyword until Success   AppiumLibrary.input text    ${OTP_Field_6}    6

insert invalid OTP
    Run Keyword until Success   AppiumLibrary.click element    ${OTP_Field_1}
    Run Keyword until Success   AppiumLibrary.input text    ${OTP_Field_1}    1
    Run Keyword until Success   AppiumLibrary.click element   ${OTP_Field_2}
    Run Keyword until Success   AppiumLibrary.input text    ${OTP_Field_2}    2
    Run Keyword until Success   AppiumLibrary.click element   ${OTP_Field_3}
    Run Keyword until Success   AppiumLibrary.input text    ${OTP_Field_3}    3
    Run Keyword until Success   AppiumLibrary.click element   ${OTP_Field_4}
    Run Keyword until Success   AppiumLibrary.input text    ${OTP_Field_4}  4
    Run Keyword until Success   AppiumLibrary.click element   ${OTP_Field_5}
    Run Keyword until Success   AppiumLibrary.input text    ${OTP_Field_5}    5
    Run Keyword until Success   AppiumLibrary.click element   ${OTP_Field_6}
    Run Keyword until Success   AppiumLibrary.input text    ${OTP_Field_6}    7

click on edit number
    Run Keyword until Success   AppiumLibrary.click element    ${otp_editnumber_button}


