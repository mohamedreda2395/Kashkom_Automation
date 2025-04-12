*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${ADMIN_DASH_BOARD_POST_LIST}                      //*[@id="main-menu-navigation"]/li[5]/a/span
${ADMIN_DASH_BOARD_POST_Tab}                       //*[@id="main-menu-navigation"]/li[5]/ul/li[1]/a/span
${ADMIN_DASH_BOARD_POST_SEARCH_BAR}                //*[@id="data-table-search"]
${ADMIN_DASH_BOARD_POST_VIEW_ICON}                 //*[@id="posts-table"]/tbody/tr/td[6]/a
${ADMIN_DASH_BOARD_FEEDBACK_Tab}                   //button[normalize-space()='Feedback']
${ADMIN_DASH_BOARD_STATUS_LIST}                    //*[@id="status"]
${ADMIN_DASH_BOARD_UPDATE_STATUS_BUTTON}           //*[@id="ajax-data-wrapper"]/div[1]/div/form/div[3]/button
${ADMIN_DASH_BOARD_PROFILE_ICON}                   //*[@id="dropdown-user"]/div/span[1]
${ADMIN_DASH_BOARD_LOGOUT_SELECTION}                   //a[normalize-space()='Logout']


${ADMIN_DASH_BOARD_TICKETS_LIST}                       xpath=//*[@id="main-menu-navigation"]/li[12]/a
${ADMIN_DASH_BOARD_TICKETS_Tab}                        xpath=//a[@href='https://test.kamashka.com/admin/tickets']
${ADMIN_DASH_BOARD_TICKETS_VIEW-BUTTON}                xpath=//*[@id="tickets-table"]/tbody/tr[1]/td[8]/a
${ADMIN_DASH_BOARD_TICKETS_REPLY-FIELD}                id=add-ticket-reply-text
${ADMIN_DASH_BOARD_TICKETS_REPLY-TEXT}                 hello
${ADMIN_DASH_BOARD_TICKETS_SEND-BUTTON}                xpath=//*[@id="add-ticket-reply-form"]/button
${ADMIN_DASH_BOARD_TICKETS_CLOSE-BUTTON}               xpath=//*[@id="ticket-close-btn-wrapper"]/a
${ADMIN_DASH_BOARD_TICKETS_CONFIRM_CLOSE-BUTTON}       xpath=//*[@id="ajax-modal"]/div/div/div[2]/form/div/button[2]

${ADMIN_DASH_BOARD_ORDERS_TAB}                             xpath=//a[contains(text(),'Orders')]
${ADMIN_DASH_BOARD_ORDER_VIEW_ICON}                        xpath=//tbody/tr[1]/td[6]/a[1]//*[name()='svg']
${ADMIN_ORDERS_UPDATE_STATUS_BUTTON}                    xpath=//a[@class='ajax-modal']
${ADMIN_ORDER_SUBMIT_BUTTON}                            xpath=//button[normalize-space()='Submit']

${ADMIN_USERS_TAB}                                             //span[normalize-space()='Users']
${ADMIN_USERS_TAB_CREATE_BUTTON}                               //a[normalize-space()='Create test user']
${ADMIN_USERS_TAB_CREATE_PAGE_USER_NAME_FIELD}                   //input[@name='name']
${ADMIN_USERS_TAB_CREATE_PAGE_USER_NAME_TEXT}                       Test User
${ADMIN_USERS_TAB_CREATE_PAGE_MAIL_FIELD}                        //input[@name='email']
${ADMIN_USERS_TAB_CREATE_PAGE_MAIL_TEXT}                            user3@app.com
${ADMIN_USERS_TAB_CREATE_PAGE_PASSWORD_FIELD}                      //input[@name='password']
${ADMIN_USERS_TAB_CREATE_PAGE_PASSWORD_TEXT}                            12345A@a
${ADMIN_USERS_TAB_CREATE_PAGE_CONFIRMATION_PASSWORD_FIELD}             (//*[@class="form-group"])[4]/input
${ADMIN_USERS_TAB_CREATE_PAGE_CONFIRMATION_PASSWORD_TEXT}               12345A@a
${ADMIN_USERS_TAB_CREATE_PAGE_COUNTRY_FIELD}                  //*[@class="select2-selection__arrow"]
${ADMIN_USERS_TAB_CREATE_PAGE_COUNTRY_FIRST_ONE}               //*[@class="select2-results__option"]
${ADMIN_USERS_TAB_CREATE_PAGE_MOBILE_FIELD}                      //input[@name='mobile']
${ADMIN_USERS_TAB_CREATE_PAGE_MOBILE_TEXT}                          23658541
${ADMIN_USERS_TAB_CREATE_PAGE_CREATE_TEST_USER_BUTTON}                  //button[@type='submit']


${ADMIN_DASH_BOARD_USER_VIEW_ICON}               (//*[@class="feather feather-eye"])[1]
${ADMIN_DASH_BOARD_USER_VIEW_ICON_BALANCE_TAB}       //button[normalize-space()='Balances']
${ADMIN_DASH_BOARD_USER_VIEW_ICON_CREATE_BALANCE_BUTTON}     //a[@class='btn btn-primary ajax-modal']
${ADMIN_DASH_BOARD_USER_VIEW_ICON_BALANCE_AMOUNT_FIELD}      //input[@name='amount']
${ADMIN_DASH_BOARD_USER_VIEW_ICON_BALANCE_ADD_AMOUNT_BUTTON}     //*[@class="btn btn-primary"]

