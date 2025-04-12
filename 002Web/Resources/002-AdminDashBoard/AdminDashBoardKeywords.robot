*** Settings ***
Resource    ../../../002Web/Resources/000-Common/CommonKeyWords.robot
Library     SeleniumLibrary
Resource    ../../../002Web/Resources/001-SharedModules/0011-Header/001111-CreatePostAndStore/0011111-CreatePost/CreatePostKeyWords.robot
Resource    ../003-UserManagement/0011101-Login/LoginKeywords.robot
Resource    ../00111-Home/HomeAssertions.robot
Resource    ./AdminDashBoardAssertions.robot
Resource    ./AdminDashBoardLocators.robot
Resource    ../003-UserManagement/0011101-Login/LoginPage.robot
Resource    ../003-UserManagement/UserManagementPage.robot
Resource    ../001-SharedModules/0011-Header/Header.robot
Resource    ../../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/00111011MyStoreStatus/001110111StoreDashboard/001110102-Orders/0011101020-OrdersStatus/OrderStatusPage.robot
Resource    ../../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/00111011MyStoreStatus/001110111StoreDashboard/00111011110-ReturnOrders/001110111100-ReturnOrdersStatus/ReturnOrdersStatusPage.robot

*** Keywords ***

Navigate To Admin Dash Board
   [Arguments]                        ${username}     ${password}
   Click Profile Icon To Sign
   Navigate to login page
   SignIn                 ${username}     ${password}
Verify That Admin Dash Board Loaded Successfully
    wait until element is visible     ${ADMIN_DASH_BOARD_POST_Tab_APPEAR}
    wait until element is visible     ${ADMIN_DASH_BOARD_STORES_Tab_APPEAR}

Approave The Post
    [Arguments]                       ${admin_dash_board_status_list_approved_status}
    Click On Feedback Tab
    Choose Approave Status            ${admin_dash_board_status_list_approved_status}
    Update Status

Select Posts Tab
    Run Keyword until Success    seleniumlibrary.click element                     ${ADMIN_DASH_BOARD_POST_LIST}
    Run Keyword until Success    seleniumlibrary.click element                     ${ADMIN_DASH_BOARD_POST_Tab}

Search For Post
    Run Keyword until Success    seleniumlibrary.input text                        ${ADMIN_DASH_BOARD_POST_SEARCH_BAR}             ${AUTO_POST_TITLE}
    wait until page contains          ${AUTO_POST_TITLE}
    wait until page contains          ${ADMIN_DASH_BOARD_POST_PENDING_STATUS_APPEAR}

Click on View Icon
    Run Keyword until Success    seleniumlibrary.click element                     ${ADMIN_DASH_BOARD_POST_VIEW_ICON}

View Post Detail
    Click on View Icon
    wait until element is visible     ${ADMIN_DASH_BOARD_FEEDBACK_Tab_APPEAR}
    wait until element is visible     ${ADMIN_DASH_BOARD_BALANCE_Tab_APPEAR}
    wait until page contains          ${AUTO_POST_TITLE}

Click On Feedback Tab
    Run Keyword until Success    seleniumlibrary.click element                     ${ADMIN_DASH_BOARD_FEEDBACK_Tab}
    wait until element is visible     ${ADMIN_DASH_BOARD_STATUS_LIST_APPEAR}

Choose Approave Status
   [Arguments]                        ${admin_dash_board_status_list_approved_status}
    select from list by label         ${ADMIN_DASH_BOARD_STATUS_LIST}                 ${admin_dash_board_status_list_approved_status}

Update Status
    Run Keyword until Success    seleniumlibrary.click element                     ${ADMIN_DASH_BOARD_UPDATE_STATUS_BUTTON}
    sleep    3
    wait until element is visible     ${ADMIN_DASH_BOARD_POST_ID_APPEAR}

Logout
    Click On Super Admin Icon
    Click On Logout
    wait until page contains          ${HEADER_LOGIN_CREATE_BUTTON_APPEAR}

Click On Super Admin Icon
    Run Keyword until Success    seleniumlibrary.click element                     ${ADMIN_DASH_BOARD_PROFILE_ICON}

Click On Logout
    Run Keyword until Success    seleniumlibrary.click element                     ${ADMIN_DASH_BOARD_LOGOUT_SELECTION}

Open tab of tickets
       Run Keyword until Success      seleniumlibrary.click element      ${ADMIN_DASH_BOARD_TICKETS_LIST}
       wait until page contains       ${ADMIN_DASH_BOARD_VERIFY-TICKETS_LIST}
       Run Keyword until Success     seleniumlibrary.click element     ${ADMIN_DASH_BOARD_TICKETS_Tab}
Open ticket
       wait until page contains     ${ADMIN_DASH_BOARD_VERIFY-TICKETS_Tab}
       Run Keyword until Success    seleniumlibrary.click element      ${ADMIN_DASH_BOARD_TICKETS_VIEW-BUTTON}
Reply ticket
       wait until element is visible   ${ADMIN_DASH_BOARD_VERIFY-TICKETS}
       Run Keyword until Success    seleniumlibrary.input text        ${ADMIN_DASH_BOARD_TICKETS_REPLY-FIELD}         ${ADMIN_DASH_BOARD_TICKETS_REPLY-TEXT}
       Run Keyword until Success    seleniumlibrary.click element     ${ADMIN_DASH_BOARD_TICKETS_SEND-BUTTON}
Close ticket
       wait until page contains    ${ADMIN_DASH_BOARD_VERIFY-CLOSE-BUTTON}
       Run Keyword until Success    seleniumlibrary.click element      ${ADMIN_DASH_BOARD_TICKETS_CLOSE-BUTTON}
       wait until page contains      ${ADMIN_DASH_BOARD_VERIFY-CONFIRM-CLOSE-BUTTON}
       Run Keyword until Success    seleniumlibrary.click element      ${ADMIN_DASH_BOARD_TICKETS_CONFIRM_CLOSE-BUTTON}

Open Orders Tab
      Run Keyword until Success    seleniumlibrary.click element    ${ADMIN_DASH_BOARD_ORDERS_TAB}
      Run Keyword until Success    seleniumlibrary.click element    ${ADMIN_DASH_BOARD_ORDER_VIEW_ICON}

Update Order Status
  wait until page contains      Update status
  Run Keyword until Success    seleniumlibrary.click element       ${ADMIN_ORDERS_UPDATE_STATUS_BUTTON}
  Verify That Assign To Delivery Man Status Is Suceesfully Appear
  Run Keyword until Success    seleniumlibrary.click element         ${ADMIN_ORDER_SUBMIT_BUTTON}
  Verify That Assign To Delivery Man Status Is Suceesfully Appear
  Run Keyword until Success    seleniumlibrary.click element       ${ADMIN_ORDERS_UPDATE_STATUS_BUTTON}
  Verify That Out Of Delivery Status Is Suceesfully Appear
  Run Keyword until Success    seleniumlibrary.click element         ${ADMIN_ORDER_SUBMIT_BUTTON}
  Verify That Out Of Delivery Status Is Suceesfully Appear
  Run Keyword until Success    seleniumlibrary.click element       ${ADMIN_ORDERS_UPDATE_STATUS_BUTTON}
  Verify That Delivered Status Is Suceesfully Appear
  Run Keyword until Success    seleniumlibrary.click element      ${ADMIN_ORDER_SUBMIT_BUTTON}
  Verify That Delivered Status Is Suceesfully Appear

Update Delivered Order Status
    wait until page contains      Update status
    Run Keyword until Success    seleniumlibrary.click element       ${ADMIN_ORDERS_UPDATE_STATUS_BUTTON}
    Run Keyword until Success    seleniumlibrary.click element         ${ADMIN_ORDER_SUBMIT_BUTTON}
    Run Keyword until Success    seleniumlibrary.click element       ${ADMIN_ORDERS_UPDATE_STATUS_BUTTON}
    Verify That Poupup Of Selection Between Approave and Reject Return Is Successfully Appear
    Select Return Approaved
    Run Keyword until Success    seleniumlibrary.click element         ${ADMIN_ORDER_SUBMIT_BUTTON}
    Verification of Return Orders Return Approved Status
    Run Keyword until Success    seleniumlibrary.click element       ${ADMIN_ORDERS_UPDATE_STATUS_BUTTON}
    wait until page contains    ${RETURN_ORDERS_STATU_RETURNED_TO_STORE_TEXT_APPEAR}
    Run Keyword until Success    seleniumlibrary.click element         ${ADMIN_ORDER_SUBMIT_BUTTON}
    wait until page contains    ${RETURN_ORDERS_STATU_RETURNED_TO_STORE_TEXT_APPEAR}

Open Users Tab
    Run Keyword until Success    seleniumlibrary.click element    ${ADMIN_USERS_TAB}

Click on Create Test User
    Run Keyword until Success    seleniumlibrary.click element      ${ADMIN_USERS_TAB_CREATE_BUTTON}


Insert Test User Name
    [Arguments]    ${admin_USERS_tab_create_page_user_name_text_arg}=Afefy
    Run Keyword until Success    seleniumlibrary.input text        ${ADMIN_USERS_TAB_CREATE_PAGE_USER_NAME_FIELD}    ${admin_USERS_tab_create_page_user_name_text_arg}

Insert Test User Mail
    [Arguments]     ${admin_USERS_tab_create_page_mail_text_arg}=user180@app.com
    Run Keyword until Success    seleniumlibrary.input text        ${ADMIN_USERS_TAB_CREATE_PAGE_MAIL_FIELD}      ${admin_USERS_tab_create_page_mail_text_arg}

Insert Test User Password
    [Arguments]    ${admin_USERS_tab_create_page_password_text_arg}=12345A@a
    Run Keyword until Success    seleniumlibrary.input text        ${ADMIN_USERS_TAB_CREATE_PAGE_PASSWORD_FIELD}      ${admin_USERS_tab_create_page_password_text_arg}

Insert Test User Confirmation Password
    [Arguments]    ${admin_USERS_tab_create_page_password_text_arg}=12345A@a
    Run Keyword until Success    seleniumlibrary.input text       ${ADMIN_USERS_TAB_CREATE_PAGE_CONFIRMATION_PASSWORD_FIELD}      ${admin_USERS_tab_create_page_password_text_arg}

Select User Country
    Run Keyword until Success    seleniumlibrary.click element   ${ADMIN_USERS_TAB_CREATE_PAGE_COUNTRY_FIELD}
    Run Keyword until Success    seleniumlibrary.click element   ${ADMIN_USERS_TAB_CREATE_PAGE_COUNTRY_FIRST_ONE}

Insert Test Mobile Number
    [Arguments]    ${admin_USERS_tab_create_page_mobile_text_arg}=01111111
    Run Keyword until Success    seleniumlibrary.input text      ${ADMIN_USERS_TAB_CREATE_PAGE_MOBILE_FIELD}     ${admin_USERS_tab_create_page_mobile_text_arg}

Click On Create Test User Button
    Run Keyword until Success    seleniumlibrary.click element    ${ADMIN_USERS_TAB_CREATE_PAGE_CREATE_TEST_USER_BUTTON}


Click on View User Icon
    Run Keyword until Success    seleniumlibrary.click element   ${ADMIN_DASH_BOARD_USER_VIEW_ICON}
Click on Balance Tab
    Run Keyword until Success    seleniumlibrary.click element   ${ADMIN_DASH_BOARD_USER_VIEW_ICON_BALANCE_TAB}

Click on Create Balance Button
    Run Keyword until Success    seleniumlibrary.click element   ${ADMIN_DASH_BOARD_USER_VIEW_ICON_CREATE_BALANCE_BUTTON}

Insert Balance Amount
    [Arguments]    ${admin_dash_board_user_view_icon_balance_amount_text}=10000
    Run Keyword until Success    seleniumlibrary.input text      ${ADMIN_DASH_BOARD_USER_VIEW_ICON_BALANCE_AMOUNT_FIELD}    ${admin_dash_board_user_view_icon_balance_amount_text}

Click on Add Amount Button
    Run Keyword until Success    seleniumlibrary.click element   ${ADMIN_DASH_BOARD_USER_VIEW_ICON_BALANCE_ADD_AMOUNT_BUTTON}