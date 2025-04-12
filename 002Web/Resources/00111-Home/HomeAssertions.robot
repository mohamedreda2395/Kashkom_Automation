*** Settings ***
Library     SeleniumLibrary
Resource    ../../../002Web/Resources/000-Common/CommonVariables.robot

*** Variables ***
${HEADER_LOGIN_CREATE_BUTTON_APPEAR}       ${HEADER_LOGIN_CREATE_BUTTON_APPEAR_DIC.${LANGUAGE}}
${HEADER_LOGIN_CREATE_BUTTON_APPEAR_EN}           Login
${HEADER_LOGIN_CREATE_BUTTON_APPEAR_AR}           تسجيل الدخول
&{HEADER_LOGIN_CREATE_BUTTON_APPEAR_DIC}          en=${HEADER_LOGIN_CREATE_BUTTON_APPEAR_EN}       ar=${HEADER_LOGIN_CREATE_BUTTON_APPEAR_AR}


${FOLLOWING_TAB}    //a[@id='nav-following-tab']
${SHARED_POST_ICONS}        //*[@id="swiper-wrapper-2fe010a8ea0c111f3"]/div[1]/div/div[2]/div[1]/div[1]

