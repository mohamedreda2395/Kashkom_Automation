*** Settings ***
Library     SeleniumLibrary
Resource    ../../../002Web/Resources/000-Common/CommonVariables.robot

*** Variables ***
${ADMIN_DASH_BOARD_POST_Tab_APPEAR}                  //a[contains(text(),'Posts')]
${ADMIN_DASH_BOARD_STORES_Tab_APPEAR}                //a[contains(text(),'Stores')]
${ADMIN_DASH_BOARD_POST_PENDING_STATUS_APPEAR}           ${ADMIN_DASH_BOARD_POST_PENDING_STATUS_APPEAR_DIC.${LANGUAGE}}
${ADMIN_DASH_BOARD_POST_PENDING_STATUS_APPEAR_EN}                   Pending
${ADMIN_DASH_BOARD_POST_PENDING_STATUS_APPEAR_AR}                   قيد الإنتظار
&{ADMIN_DASH_BOARD_POST_PENDING_STATUS_APPEAR_DIC}               ar=${ADMIN_DASH_BOARD_POST_PENDING_STATUS_APPEAR_AR}   en=${ADMIN_DASH_BOARD_POST_PENDING_STATUS_APPEAR_EN}


${ADMIN_DASH_BOARD_FEEDBACK_Tab_APPEAR}             //button[normalize-space()='Feedback']
${ADMIN_DASH_BOARD_BALANCE_Tab_APPEAR}              //button[normalize-space()='Balances']
${ADMIN_DASH_BOARD_STATUS_LIST_APPEAR}             //*[@id="select2-status-container"]
${ADMIN_DASH_BOARD_POST_ID_APPEAR}             //th[normalize-space()='id']

${ADMIN_DASH_BOARD_VERIFY_TICKETS_LIST}       ${ADMIN_DASH_BOARD_VERIFY_TICKETS_LIST_DIC.${LANGUAGE}}
${ADMIN_DASH_BOARD_VERIFY_TICKETS_LIST_EN}         Tickets
${ADMIN_DASH_BOARD_VERIFY_TICKETS_LIST_AR}       التذاكر
&{ADMIN_DASH_BOARD_VERIFY_TICKETS_LIST_DIC}         en=${ADMIN_DASH_BOARD_VERIFY_TICKETS_LIST_EN}    ar=${ADMIN_DASH_BOARD_VERIFY_TICKETS_LIST_AR}


${ADMIN_DASH_BOARD_VERIFY-TICKETS_Tab}          Nada Kamashka
${ADMIN_DASH_BOARD_VERIFY-TICKETS}             //*[@id="add-ticket-reply-form"]/button
${ADMIN_DASH_BOARD_VERIFY-CLOSE-BUTTON}           Close
${ADMIN_DASH_BOARD_VERIFY-CONFIRM-CLOSE-BUTTON}       Yes, Close