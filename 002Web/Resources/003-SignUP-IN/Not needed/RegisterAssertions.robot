*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${HEADER_REGISTER_PAGE_TEXT}    ${HEADER_REGISTER_PAGE_TEXT_DIC.${LANGUAGE}}
${HEADER_REGISTER_PAGE_TEXT_EN}     Create new account
${HEADER_REGISTER_PAGE_TEXT_AR}     إنشاء حساب جديد
&{HEADER_REGISTER_PAGE_TEXT_DIC}   ar=${HEADER_REGISTER_PAGE_TEXT_AR}       en=${HEADER_REGISTER_PAGE_TEXT_EN}
#${LANGUAGE}      ar
${LANGUAGE}      en




#${OTP_PAGE_HEADER}     Mobile verification code
