*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${LOGIN_BUTTON}         xpath://*[@id="top-header-v2"]/div/div/div[3]/a[2]
${LOGIN_NUMBER}         xpath://input[@name="mobile"]
${LOGIN_CONTINUE_BUTTON}       xpath://*[@id="auth-modal"]/div/div/div/div/form/div[2]/button
${LOGIN_OTP_1_NUMBER}          xpath://input[@class="num1"]
${LOGIN_OTP_2_NUMBER}          xpath://input[@class="num2"]
${LOGIN_OTP_3_NUMBER}          xpath://input[@class="num3"]
${LOGIN_OTP_4_NUMBER}          xpath://input[@class="num4"]
${LOGIN_OTP_5_NUMBER}          xpath://*[@id="auth-pin-form"]/div/div[1]/input[5]
${LOGIN_OTP_6_NUMBER}          xpath://*[@id="auth-pin-form"]/div/div[1]/input[6]
${LOGIN_RESENDOTP_BUTTON}          xpath://*[@id="resend-form"]/div[2]/button
${LOGIN_RESENDOTP_TIMER}          xpath://*[@id="count-down-numbers"]
${LOGIN_COMPLETE_PROFILE_BUTTON}           xpath://*[@id="auth-modal"]/div/div/div/div/form/div[2]/div/a[1]
${LOGIN_REMIND_ME_LATER_BUTTON}        xpath://*[@id="auth-modal"]/div/div/div/div/form/div[2]/div/a[2]
${LOGIN_TITLE_OF_SUGGESTONS_DIALOGUE}       xpath://*[@id='users-suggestions-modal']/div/div/div[1]/h5[contains(text(),'Suggestions')]
${LOGIN_CLOESE_SUGGESTIONS_DIALOGUE_BUTTON}        xpath://*[@id="users-suggestions-modal"]/div/div/div[1]/button
${LOGIN_NEED_HELP_BUTTON}
${LOGIN_BACK_TO_HOME_BUTTON}
${LOGIN_WITH_FACEBOOK_BUTTON}
${LOGIN_WITH_GOOGLE_BUTTON}
${LOGIN_PRIVACY_POLICY_BUTTON}
${LOGIN_TERMS&CONDITION_BUTTON}
${LOGIN_FULL_NAME_TEXT}


