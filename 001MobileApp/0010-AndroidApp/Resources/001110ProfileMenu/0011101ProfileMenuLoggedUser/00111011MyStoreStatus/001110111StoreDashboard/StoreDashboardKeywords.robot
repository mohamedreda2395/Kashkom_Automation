*** Settings ***
Resource           ../../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./StoreDashboardLocators.robot
Resource    ./StoreDashboardAssertion.robot
Resource    ../../../../00111-Home/HomeKeywords.robot


*** Keywords ***

Verify Dashboard Header Text Appear on Dashboard Page
    wait until page contains     ${DASHBOARD_PAGE_HEADER}

Verify By Kamashka Text Appear on Dashboard Page
   wait until page contains    ${STORE_DASHBOARD_BY_KAMASHKA_TEXT_APPEAR}


Active toggle my store
    Run Keyword until Success    seleniumlibrary.click element    ${ACTIVE_TOGGLE}

Verify active store successfully
    wait until page contains    ${STORE_DASHBOARD_ACTIVATE_OR_DEACTIVATE_TOGGLE_SUCCESSFUL_MSG_APPEAR}

Verify deactive store successfully
    wait until page contains    ${STORE_DASHBOARD_ACTIVATE_OR_DEACTIVATE_TOGGLE_SUCCESSFUL_MSG_APPEAR}

Click on Product Tab
    Run Keyword until Success    seleniumlibrary.click element   ${PRODUCTS_TAB}

Click on Orders Tab
    wait until element is enabled    ${STORE_DASHBOARD_ORDERS_Tab}
    Run Keyword until Success    seleniumlibrary.click element    ${STORE_DASHBOARD_ORDERS_Tab}


Click on Return Orders Tab
    sleep    2
    Run Keyword until Success    seleniumlibrary.click element    ${STORE_DASHBOARD_RETURN_ORDERS_Tab}

Open store profile menu
    wait until element is enabled    ${dropdown_store_menu}
    Run Keyword until Success    seleniumlibrary.click element     ${dropdown_store_menu}

Click on Home List
    wait until element is enabled       ${STORE_DASHBOARD_HOME_Tab}
    Run Keyword until Success    seleniumlibrary.click element   ${STORE_DASHBOARD_HOME_Tab}


Click On Kamashka Home Label
    Open store profile menu
    Run Keyword until Success    seleniumlibrary.click element     ${kamashka_home}
    Verify Home Page Loaded

Inactive toggle my store
    Run Keyword until Success    seleniumlibrary.click element    ${ACTIVE_TOGGLE}

Click on Profile Icon Through Store Dashboard
    Run Keyword until Success    seleniumlibrary.click element    ${STORE_DASHBOARD_PROFILE_ICON}
    WAIT UNTIL PAGE CONTAINS    ${STORE_DASHBOARD_KAMASHKA_HOME_TEXT_APPEAR}


