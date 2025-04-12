*** Settings ***

Resource           ../../../../002Web/Resources/000-Common/CommonKeyWords.robot
Library     SeleniumLibrary
Resource    ./KnetLocators.robot
Resource    ./KnetAssertions.robot

*** Keywords ***
Insert Credintials Of Knet Method And Submit
        [Arguments]     ${knet_select_bank}     ${knet_card_number}     ${knet_select_month}    ${knet_select_year}    ${knet_pin_number}
        Verfiy Knet Page Loaded Successfully
        Select Bank                     ${knet_select_bank}
        Insert Card Number              ${knet_card_number}
        Insert Card Expiration Date     ${knet_select_month}     ${knet_select_year}
        Insert Pin Number               ${knet_pin_number}
        Click On Submit Button
        verfiy Successfull Post Paid Msg Appear Successfully

Verfiy Knet Page Loaded Successfully
    WAIT UNTIL PAGE CONTAINS   ${Knet_Page_Billing_Information_TEXT_APPEAR}

Select Bank
        [Arguments]     ${knet_select_bank}
        select from list by label      ${KNET_BANKS_LIST}           ${knet_select_bank}

Insert Card Number
        [Arguments]    ${knet_card_number}
        Run Keyword until Success    seleniumlibrary.input text                     ${KNET_CARD_NUMBER_FIELD}     ${knet_card_number}

Select Month
        [Arguments]     ${knet_select_month}
        SELECT FROM LIST BY LABEL      ${KNET_MONTHES_LIST}          ${knet_select_month}

Select Year
        [Arguments]    ${knet_select_year}
        select from list by label      ${KNET_YEARS_LIST}            ${knet_select_year}

Insert Card Expiration Date
     [Arguments]        ${knet_select_month}       ${knet_select_year}
    Select Month        ${knet_select_month}
    Select Year         ${knet_select_year}

Insert Pin Number
        [Arguments]    ${knet_pin_number}
        Run Keyword until Success    seleniumlibrary.input text                     ${KNET_PIN_NUMBER_FIELD}      ${knet_pin_number}

Click On Submit Button
        Run Keyword until Success    seleniumlibrary.click element                  ${KNET_SUBMIT_BUTTON}

Click On Confirm Button
        Run Keyword until Success    seleniumlibrary.click element       id=proceed
verfiy Successfull Post Paid Msg Appear Successfully
        wait until element is visible    ${KNET_PAGE_SUCCESSFULL_MSG_WITH_HOME_BUTTON_APPEAR}
        wait until element is visible    ${KNET_PAGE_SUCCESSFULL_MSG_WITH_POST_MANAGER_BUTTON_APPEAR}
