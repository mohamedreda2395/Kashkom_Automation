*** Settings ***
Library    SeleniumLibrary
Resource     ../../../002Web/Resources/000-Common/CommonVariables.robot

*** Variables ***

${CART_TEXT_TITLE}      ${CART_TEXT_TITLE_DIC.${LANGUAGE}}
${CART_TEXT_TITLE_EN}      Cart
${CART_TEXT_TITLE_AR}      عربة التسوق
&{CART_TEXT_TITLE_DIC}     en=${CART_TEXT_TITLE_EN}      ar=${CART_TEXT_TITLE_AR}


${CART_PRODUCT_PRICE_TEXT}       100.000 KWD
