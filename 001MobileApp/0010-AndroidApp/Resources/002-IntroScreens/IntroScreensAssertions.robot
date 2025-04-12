*** Settings ***
Library     AppiumLibrary
Resource    ../000-Common/AppCommonVariables.robot

*** Variables ***



${HEADER_SelectCountry_TEXT}               ${HEADER_SelectCountry_TEXT_DIC.${LANGUAGE}}
${HEADER_SelectCountry_TEXT_EN}                    Select Country
${HEADER_SelectCountry_TEXT_AR}                    الدولة
&{HEADER_SelectCountry_TEXT_DIC}              en=${HEADER_SelectCountry_TEXT_EN}    ar=${HEADER_SelectCountry_TEXT_AR}



${HEADER_OnBoarding_TEXT}               ${HEADER_OnBoarding_TEXT_DIC.${LANGUAGE}}
${HEADER_OnBoarding_TEXT_EN}                    Next
${HEADER_OnBoarding_TEXT_AR}                    التالي
&{HEADER_OnBoarding_TEXT_DIC}              en=${HEADER_OnBoarding_TEXT_EN}    ar=${HEADER_OnBoarding_TEXT_AR}

${KUWAIT_COUNTRY_TEXT}      ${KUWAIT_COUNTRY_TEXT_DIC.${LANGUAGE}}
${KUWAIT_COUNTRY_TEXT_EN}    Kuwait
${KUWAIT_COUNTRY_TEXT_AR}      كويت
&{KUWAIT_COUNTRY_TEXT_DIC}      en=${KUWAIT_COUNTRY_TEXT_EN}    ar=${KUWAIT_COUNTRY_TEXT_AR}