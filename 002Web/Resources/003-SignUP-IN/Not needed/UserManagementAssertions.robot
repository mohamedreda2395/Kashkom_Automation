*** Settings ***
Library    SeleniumLibrary
Resource    ../../../002Web/Resources/000-Common/CommonVariables.robot

*** Variables ***

${HEADER_DRPDOWN_MENU_PRAGRAPH_TEXT}        ${HEADER_DRPDOWN_MENU_PRAGRAPH_TEXT_DIC.${LANGUAGE}}
${HEADER_DRPDOWN_MENU_PRAGRAPH_TEXT_EN}        Continue With Your Profile, Create Your Own Adv , Collect Money, Shop Online And More
${HEADER_DRPDOWN_MENU_PRAGRAPH_TEXT_AR}        تابع بالحساب الخاص بك, أنشأ أعلانك الخاص, قم بسحب أموالك, تسوق أونلاين والمزيد
&{HEADER_DRPDOWN_MENU_PRAGRAPH_TEXT_DIC}       en=${HEADER_DRPDOWN_MENU_PRAGRAPH_TEXT_EN}   ar=${HEADER_DRPDOWN_MENU_PRAGRAPH_TEXT_AR}


${HEADER_DRPDOWN_MENU_PRAGRAPH}               ${HEADER_DRPDOWN_MENU_PRAGRAPH_DIC.${LANGUAGE}}
${HEADER_DRPDOWN_MENU_PRAGRAPH_EN}                    Login
${HEADER_DRPDOWN_MENU_PRAGRAPH_AR}                    تسجيل الدخول
&{HEADER_DRPDOWN_MENU_PRAGRAPH_DIC}              en=${HEADER_DRPDOWN_MENU_PRAGRAPH_EN}    ar=${HEADER_DRPDOWN_MENU_PRAGRAPH_AR}



