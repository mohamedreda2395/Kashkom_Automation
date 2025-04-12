*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${ACTIVE_TOGGLE}    //label[@for='product-active']
${dropdown_store_menu}    //span[normalize-space()='Clothes']
${kamashka_home}    //*[@class="dropdown-menu disable-auto-close show"]/a[1]
${PRODUCTS_TAB}    //i[@class="icon icon-products"]
${STORE_DASHBOARD_ORDERS_Tab}  //i[@class="icon icon-orders-1"]
${STORE_DASHBOARD_HOME_Tab}    //i[@class="icon icon icon-dashboard-home"]
${STORE_DASHBOARD_RETURN_ORDERS_Tab}    //i[@class="icon icon-icon-returns"]
${STORE_DASHBOARD_PROFILE_ICON}    //*[@id="language"]/span