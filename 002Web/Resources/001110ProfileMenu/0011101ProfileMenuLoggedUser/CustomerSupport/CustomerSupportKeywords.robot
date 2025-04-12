*** Settings ***
Library    SeleniumLibrary

Resource    ./CustomerSupportAsertions.robot
Resource    ./CustomerSupportLocators.robot
Resource           ../../../../../002Web/Resources/000-Common/CommonKeyWords.robot


*** Variables ***


*** Keywords ***


Insert type of ticket
    wait until page contains     ${VERIFY-TO-CUSTOMER-SUPPORT-PAGE}
    Run Keyword until Success     seleniumlibrary.click element                      ${CUSTOMER-SUPPORT-TYPE-FIELD}
    wait until page contains     ${CUSTOMER-SUPPORT-VERIFY-DROP-DOWN-LIST-TYPE}
    mouse over                   ${CUSTOMER-SUPPORT-SELECT-TYPE}
    wait until page contains     ${CUSTOMER-SUPPORT-VERIFY-DROP-DOWN-LIST-TYPE}
    press keys                   ${CUSTOMER-SUPPORT-SELECT-TYPE-PATH}                ${CUSTOMER-SUPPORT-CLICK-ENTER-BUTTON}
Insert title of ticket
     [Arguments]                 ${CUSTOMER_SUPPORT_INSERT_TITLE_ARG}

    wait until page contains     ${CUSTOMER-SUPPORT-VERIFY-TITLE-APPEAR}
    Run Keyword until Success    seleniumlibrary.input text                          ${CUSTOMER-SUPPORT-INSERT-TITLE}                      ${CUSTOMER_SUPPORT_INSERT_TITLE_ARG}
Insert description of ticket
     [Arguments]                 ${CUSTOMER_SUPPORT_INSERT_DESCRIPTION_ARG}

    wait until page contains     ${CUSTOMER-SUPPORT-VERIFY-DESCRIPTION-APPEAR}
    Run Keyword until Success    seleniumlibrary.input text                          ${CUSTOMER-SUPPORT-INSERT-DESCRIPTION}                  ${CUSTOMER_SUPPORT_INSERT_DESCRIPTION_ARG}

Click on submit button

    wait until page contains     ${CUSTOMER-SUPPORT-VERIFY-SUBMIT-BUTTTON-APPEAR}
    Run Keyword until Success    seleniumlibrary.click element                       ${CUSTOMER-SUPPORT-SUBMIT-BUTTTON}
    wait until element is visible     ${CUSTOMER-SUPPORT-VERIFY-TICKET-PAGE}

