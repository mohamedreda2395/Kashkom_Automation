*** Settings ***
Library    SeleniumLibrary
Resource    ../../../../002Web/Resources/000-Common/CommonVariables.robot

*** Variables ***
${OTP_PAGE_HEADER}     ${OTP_PAGE_HEADER_DIC.${LANGUAGE}}
${OTP_PAGE_HEADER_EN}     OTP
${OTP_PAGE_HEADER_AR}      الرقم السري المؤقت
&{OTP_PAGE_HEADER_DIC}      en=${OTP_PAGE_HEADER_EN}        ar=${OTP_PAGE_HEADER_AR}

${COMPLETE_ACC_DIALOG_HEADER}    Complete your account