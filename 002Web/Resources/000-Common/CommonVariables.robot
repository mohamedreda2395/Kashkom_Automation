*** Settings ***
Library     SeleniumLibrary
Resource    ../../../002Web/Resources/000-Common/CommonKeyWords.robot

*** Variables ***
#Database credintials
${DBName}       kamashka_test
${DBUser}       test_team
${DBPass}       o7HNL6gDskSrO2Am
${DBHost}       63.34.153.67
${DBPort}       3306

#Browsers
${BROWSER}    chrome
${BROWSER2}  edge
#${BROWSER}  firefox
#${BROWSER}  chrome
${ALIAS}    first
#${URL}      https://test.kamashka.com/


${ENVIROMENT}    TEST
#${ENVIROMENT}    PROD
${URL}          ${URL_DIC.${ENVIROMENT}}
&{URL_DIC}       TEST=${URL_TEST}    PROD=${URL_PROD}
${URL_TEST}        https://test.kashkom.com
${URL_PROD}        https://kashkom.com



${CART_ADD_TO_CART_BUTTON_TEXT}                    ${CART_ADD_TO_CART_BUTTON_TEXT_DIC.${LANGUAGE}}
&{CART_ADD_TO_CART_BUTTON_TEXT_DIC}    en=${CART_ADD_TO_CART_BUTTON_TEXT_EN}    ar=${CART_ADD_TO_CART_BUTTON_TEXT_AR}
${CART_ADD_TO_CART_BUTTON_TEXT_AR}       أضف الى السلة
${CART_ADD_TO_CART_BUTTON_TEXT_EN}      Add to Cart

#${LANGUAGE}      ar
${LANGUAGE}      en




${RETRY}    3 x
${RETRY_INTERVAL}    1 s

${Common_IMPLICIT_WAIT}     10
${Common_TIME_OUT}  10
${Common_LOAD_TIME_OUT}     10
${Common_SELENIUM_SPEED}    0.1
${RETRY}    5 x
${RETRY_INTERVAL}   1 s
${ALIAS}    main
${Common_CLOSE_POST_VIEW}   //i[@class='close-fullscreen-modal icon icon-close']
${Common_CLOSE_SUCCESS_MSG}    //a[@class='btn btn-outline-primary remove-action-success']
${SUGGESTIONS_DIALOG_HEADER}    Suggestions
${CLOSE_SUGGESTIONS_DIALOG_BTN}    //div[@class='modal-dialog modal-md']//button[@aria-label='Close']