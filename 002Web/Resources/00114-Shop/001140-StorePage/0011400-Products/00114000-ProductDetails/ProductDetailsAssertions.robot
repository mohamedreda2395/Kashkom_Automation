*** Settings ***
Library     SeleniumLibrary
Resource    ../../../../../../002Web/Resources/000-Common/CommonVariables.robot

*** Variables ***
${USER_STORE_PRODUCT_PAGE_PRICE_TEXT_APPEAR}          ${USER_STORE_PRODUCT_PAGE_PRICE_TEXT_APPEAR_DIC.${LANGUAGE}}
${USER_STORE_PRODUCT_PAGE_PRICE_TEXT_APPEAR_EN}                     Price
${USER_STORE_PRODUCT_PAGE_PRICE_TEXT_APPEAR_AR}                      السعر
&{USER_STORE_PRODUCT_PAGE_PRICE_TEXT_APPEAR_DIC}           en=${USER_STORE_PRODUCT_PAGE_PRICE_TEXT_APPEAR_EN}       ar=${USER_STORE_PRODUCT_PAGE_PRICE_TEXT_APPEAR_AR}


${USER_STORE_PRODUCT_PAGE_BOOST_PRODUCT_ELEMENT_APPEAR}          xpath=//a[normalize-space()='Boost product']
${USER_STORE_PRODUCT_PAGE_CHECKOUT_NOTY_BAR_APPEAR}           Checkout