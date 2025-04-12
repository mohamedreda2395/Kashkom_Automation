*** Settings ***
Library    SeleniumLibrary
Resource    ../../../../002Web/Resources/000-Common/CommonVariables.robot

*** Variables ***
${CATEGORIES_PAGE_HEADER}     ${CATEGORIES_PAGE_HEADER_DIC.${LANGUAGE}}
${CATEGORIES_PAGE_HEADER_EN}     Categories
${CATEGORIES_PAGE_HEADER_AR}     الفئات
&{CATEGORIES_PAGE_HEADER_DIC}     en=${CATEGORIES_PAGE_HEADER_EN}       ar=${CATEGORIES_PAGE_HEADER_AR}

