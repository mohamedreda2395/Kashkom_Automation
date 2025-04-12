*** Settings ***
Library     SeleniumLibrary
Resource    ../../../../002Web/Resources/000-Common/CommonVariables.robot

*** Variables ***
${HEADER_SHOP_TEXT_EN}     Shop
${HEADER_SHOP_TEXT_AR}     تسوق
&{HEADER_SHOP_TEXT_DIC}     en=${HEADER_SHOP_TEXT_EN}       ar=${HEADER_SHOP_TEXT_AR}
${HEADER_SHOP_TEXT}          ${HEADER_SHOP_TEXT_DIC.${LANGUAGE}}

${HEADER_SHOP_ICON}    //a[@class='menu-link ']


