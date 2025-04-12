*** Settings ***
Library     AppiumLibrary
Resource    ../000-Common/AppCommonVariables.robot

*** Variables ***
#login screen
${HEADER_Login_TEXT}               ${HEADER_Login_TEXT_DIC.${LANGUAGE}}
${HEADER_Login_TEXT_EN}                    Ahlan
${HEADER_Login_TEXT_AR}                    أهلاً
&{HEADER_Login_TEXT_DIC}              en=${HEADER_Login_TEXT_EN}    ar=${HEADER_Login_TEXT_AR}

${HEADER_Login2_TEXT}               ${HEADER_Login2_TEXT_DIC.${LANGUAGE}}
${HEADER_Login2_TEXT_EN}                    Please enter your phone number to login to your account
${HEADER_Login2_TEXT_AR}                    الرجاء إدخال رقم هاتفك لتسجيل الدخول إلى حسابك
&{HEADER_Login2_TEXT_DIC}              en=${HEADER_Login2_TEXT_EN}    ar=${HEADER_Login2_TEXT_AR}

${HEADER_NeedHelp_TEXT}               ${HEADER_NeedHelp_TEXT_DIC.${LANGUAGE}}
${HEADER_NeedHelp_TEXT_EN}                    Need Help ?
${HEADER_NeedHelp_TEXT_AR}                    تحتاج إلى مساعدة؟
&{HEADER_NeedHelp_TEXT_DIC}              en=${HEADER_NeedHelp_TEXT_EN}    ar=${HEADER_NeedHelp_TEXT_AR}

${HEADER_ContinueAsGuest_TEXT}               ${HEADER_ContinueAsGuest_TEXT_DIC.${LANGUAGE}}
${HEADER_ContinueAsGuest_TEXT_EN}                    Continue as a guest
${HEADER_ContinueAsGuest_TEXT_AR}                    استمر كضيف
&{HEADER_ContinueAsGuest_TEXT_DIC}              en=${HEADER_ContinueAsGuest_TEXT_EN}    ar=${HEADER_ContinueAsGuest_TEXT_AR}

${Button_Login_TEXT}               ${Button_Login_TEXT_DIC.${LANGUAGE}}
${Button_Login_TEXT_EN}                    Login
${Button_Login_TEXT_AR}                    تسجيل الدخول
&{Button_Login_TEXT_DIC}              en=${Button_Login_TEXT_EN}    ar=${Button_Login_TEXT_AR}

#OTP screen
${Header_OTP_TEXT}               ${Header_OTP_TEXT_DIC.${LANGUAGE}}
${Header_OTP_TEXT_EN}                    Enter your OTP
${Header_OTP_TEXT_AR}                    إدخل الرمز المتغير الخاص بك
&{Header_OTP_TEXT_DIC}              en=${Header_OTP_TEXT_EN}    ar=${Header_OTP_TEXT_AR}

${Header_OTP2_TEXT}               ${Header_OTP2_TEXT_DIC.${LANGUAGE}}
${Header_OTP2_TEXT_EN}                    Enter the 6 digits code that you received on your phone
${Header_OTP2_TEXT_AR}                    برجاء إدخال الرقم السري المتغير المرسل إلى هاتفك والمكون من ٦ أرقام
&{Header_OTP2_TEXT_DIC}              en=${Header_OTP2_TEXT_EN}    ar=${Header_OTP2_TEXT_AR}

${Button_SendOTPAgian_TEXT}               ${Button_SendOTPAgian_TEXT_DIC.${LANGUAGE}}
${Button_SendOTPAgian_TEXT_EN}                    Send code Again
${Button_SendOTPAgian_TEXT_AR}                    إرسال الرمز مجددا
&{Button_SendOTPAgian_TEXT_DIC}              en=${Button_SendOTPAgian_TEXT_EN}    ar=${Button_SendOTPAgian_TEXT_AR}

${Button_EditNumber_TEXT}               ${Button_EditNumber_TEXT_DIC.${LANGUAGE}}
${Button_EditNumber_TEXT_EN}                    Edit number
${Button_EditNumber_TEXT_AR}                    تعديل الرقم
&{Button_EditNumber_TEXT_DIC}              en=${Button_EditNumber_TEXT_EN}    ar=${Button_EditNumber_TEXT_AR}

#SignUP screen
${Header_SignUp_TEXT}               ${Header_SignUp_TEXT_DIC.${LANGUAGE}}
${Header_SignUp_TEXT_EN}                    Complete Your Profile
${Header_SignUp_TEXT_AR}                    اكمال الملف الشخصي
&{Header_SignUp_TEXT_DIC}              en=${Header_SignUp_TEXT_EN}    ar=${Header_SignUp_TEXT_AR}

${Header_SignUp2_TEXT}               ${Header_SignUp2_TEXT_DIC.${LANGUAGE}}
${Header_SignUp2_TEXT_EN}                    Please complete your info to enjoy all Kashkom features
${Header_SignUp2_TEXT_AR}                    برجاء إكمال بيانات ملفك الشخصي للإستمتاع بمميزات كاش كوم
&{Header_SignUp2_TEXT_DIC}              en=${Header_SignUp2_TEXT_EN}    ar=${Header_SignUp2_TEXT_AR}

${Button_SignUp_Continue_TEXT}               ${Button_SignUp_Continue_TEXT_DIC.${LANGUAGE}}
${Button_SignUp_Continue_TEXT_EN}                    Continue
${Button_SignUp_Continue_TEXT_AR}                    إستمرار
&{Button_SignUp_Continue_TEXT_DIC}              en=${Button_SignUp_Continue_TEXT_EN}    ar=${Button_SignUp_Continue_TEXT_AR}












