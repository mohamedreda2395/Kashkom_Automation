*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${REGISTER_EMAIL_TEXT}                Auto
${REGISTER_EMAIL_DOMAIN}        @app.com
${REGISTER_USER_NAME_FIELD}      //input[@placeholder='Full name']
${Email_FIELD}      id=email
${MOBILE_NUMBER_FIELD}  //input[@placeholder='Mobile']
${REGISTER_USER_PASSWORD}    name=password
${GENDER_MALE}     id="gender-male"
${DATE_OF_BIRTH_FIElD}    xpath=/html/body/div[7]/div/div[2]/div/div/form/div[3]/div[1]/div
${YEARS_LIST}   xpath=//*[@id="ui-datepicker-div"]/div/div/select[2]
${DAY_OF_BIRTH}     xpath=//*[@id="ui-datepicker-div"]/table/tbody/tr[3]/td[4]/a
${REGISTER_BUTTON}       //button[normalize-space()='Continue']
${USER_NAME}    qc