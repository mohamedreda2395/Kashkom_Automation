*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CLOSE_BTN_FOR_OTP}    //div[@class='auth-modal-header']//button[@aria-label='Close']

${NUMBER_ONE}    1

${FIRST_CODE_FIELD}    //*[@id="auth-pin-form"]/div/div[1]/input[1]
${SECOND_CODE_FIELD}    //*[@id="auth-pin-form"]/div/div[1]/input[2]
${THIRD_CODE_FIELD}    //*[@id="auth-pin-form"]/div/div[1]/input[3]
${FOURTH_CODE_FIELD}    //*[@id="auth-pin-form"]/div/div[1]/input[4]
${FIFTH_CODE_FIELD}    //*[@id="auth-pin-form"]/div/div[1]/input[5]
${SIXTH_CODE_FIELD}    //*[@id="auth-pin-form"]/div/div[1]/input[6]
