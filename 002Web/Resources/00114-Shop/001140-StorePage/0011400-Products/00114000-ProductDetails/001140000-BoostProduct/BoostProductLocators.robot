*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${BOOST_PRODUCT_SELECT_USER}     xpath=//label[@for='user-u5dBjYoD4q']//img[@class='img-fluid advertiser-image mb-0 lazyloaded']

${BOOST_PRODUCT_SEARCH_FOR_USER}    xpath=//*[@id="users-search"]
${BOOST_PRODUCT_QUANTITY_FIELD}    xpath=//input[@name='product_quantity']
${BOOST_PRODUCT_DURATION_FIELD}    xpath=//select[@name='duration']
${BOOST_PRODUCT_DURATION_FIELD_NUMBER}    xpath=/html/body/div[6]/div/div/div/form/div/div[2]/div[4]/div/select/option[1]
${BOOST_PRODUCT_COMMISSION_FIELD}         xpath=//input[@id='deal-commission-value']
${BOOST_PRODUCT_DISCOUNT_FIELD}         xpath=//input[@id='deal-discount-value']
${BOOST_PRODUCT_SEND_DEAL_BUTTON}         xpath=//button[normalize-space()='Send deal']

