*** Settings ***
Library      SeleniumLibrary
Resource    ./CustomerSupportKeywords.robot


*** Variables ***


*** Keywords ***




Create new ticket
     [Arguments]                 ${CUSTOMER_SUPPORT_INSERT_TITLE_ARG}=${CUSTOMER-SUPPORT-INSERT-TITLE-TEXT}       ${CUSTOMER_SUPPORT_INSERT_DESCRIPTION_ARG}=${CUSTOMER-SUPPORT-INSERT-DESCRIPTION-TEXT}
        Insert type of ticket
        Insert title of ticket         ${CUSTOMER_SUPPORT_INSERT_TITLE_ARG}
        Insert description of ticket    ${CUSTOMER_SUPPORT_INSERT_DESCRIPTION_ARG}
        Click on submit button