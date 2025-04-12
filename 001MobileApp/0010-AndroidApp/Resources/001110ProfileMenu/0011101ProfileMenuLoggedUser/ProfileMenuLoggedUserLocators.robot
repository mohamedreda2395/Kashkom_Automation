*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${MY_STORE_ICON}                          xpath=//a[contains(text(),'My store')]
${PROFILE_MENU_MY_ORDER_Tab}              //a[@href='https://test.kamashka.com/orders?type=order']//div[@class='content'][normalize-space()='']
${PROFILE_MENU_MY_RETURN_Tab}             //a[@href='https://test.kamashka.com/orders?type=return']//div[@class='content'][normalize-space()='']
${PROFILE_MENU_MY_ADDRESS_Tab}            xpath=//a[@href='https://test.kamashka.com/addresses']//div[@class='content'][normalize-space()='']
${PROFILE_MENU_MY_WALLET_Tab}             //div[normalize-space()='My Wallet']
${PROFILE_MENU_MY_SHARING_Tab}            //a[@href='https://test.kamashka.com/user/my_sharing']//div[@class='content'][normalize-space()='']
${PROFILE_MENU_POSTMANAGER_Tab}           xpath=//a[@href='https://test.kamashka.com/user/post_manager']//div[@class='content'][normalize-space()='']
${PROFILE_MENU_LOGOUT_BUTTON}             //button[@class='btn reset-btn']
${USER-PROFILE-SCROLL-TO-CUSTOMER-SUPPORT}                 window.scrollTo(0,200)
${USER-PROFILE--CUSTOMER-SUPPORT-TAB}                       Xpath=//*[@class='icon item-icon icon-headphone']



#${HEADER_PROFILE_ICON}                      //*[@id="top-header"]/div/div/div[4]/div[3]/div/a/i
