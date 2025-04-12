*** Settings ***
Library     SeleniumLibrary
Resource    ../../../../../../../002Web/Resources/000-Common/CommonVariables.robot

*** Variables ***
${BOOST_PRODUCT_TEXT_APPEAR}     ${BOOST_PRODUCT_TEXT_APPEAR_DIC.${LANGUAGE}}
${BOOST_PRODUCT_TEXT_APPEAR_EN}      Boost product
${BOOST_PRODUCT_TEXT_APPEAR_AR}      العروض الترويجية
&{BOOST_PRODUCT_TEXT_APPEAR_DIC}    en=${BOOST_PRODUCT_TEXT_APPEAR_EN}    ar=${BOOST_PRODUCT_TEXT_APPEAR_AR}

${PROMOTION_DEAL_PAGE_TEXT_APPEAR}      Promotion Deal