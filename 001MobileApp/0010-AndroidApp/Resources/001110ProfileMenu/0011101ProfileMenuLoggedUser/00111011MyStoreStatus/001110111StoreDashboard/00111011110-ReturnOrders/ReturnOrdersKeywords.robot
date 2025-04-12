*** Settings ***
Resource           ../../../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./ReturnOrdersAssertion.robot
Resource    ./ReturnOrdersLocators.robot
Resource    ././001110111100-ReturnOrdersStatus/ReturnOrdersStatusKeywords.robot

*** Keywords ***
Verify That Return Orders Page Is Successfully Opened
    wait until element is visible    ${RETURN_ORDERS_LIST_ELEMENT_APPEAR}
#    WAIT UNTIL PAGE CONTAINS         ${RETURN_ORDERS_LIST_RETURN_APPROAVED_FILTER_TEXT}

Click on Return Orders View Icon
    Run Keyword until Success    seleniumlibrary.click element                    ${RETURN_ORDERS_LIST_VIEW_ICON}

Verify That User Could Suucssfully Navigate To Return Orders Status Page
    Click on Return Orders View Icon
