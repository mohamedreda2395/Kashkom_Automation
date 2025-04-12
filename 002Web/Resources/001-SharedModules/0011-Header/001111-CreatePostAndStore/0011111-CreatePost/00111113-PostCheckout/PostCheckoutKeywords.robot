*** Settings ***
Resource    ../../../../../../../002Web/Resources/000-Common/CommonKeyWords.robot
Library     SeleniumLibrary
Resource    ./PostCheckoutLocators.robot
Resource    ./PostCheckoutAssertions.robot
Resource    ../../../../../001110ProfileMenu/0011101ProfileMenuLoggedUser/00111012PostManager/PostManagerKeywords.robot
*** Keywords ***

Post Place Order With Wallet
    Verify Post Checkout Page Loaded Successfully
    Select Wallet Payment Method
    Click Confirm Checkout For The Post
    sleep    5

Post Place Order With Knet
       [Arguments]          ${postcheckout_use_my_wallet_value}
       Verify Post Checkout Page Loaded Successfully
        Select Knet Payment Method
        sleep    3
        Insert Value In Use My Wallet Field      ${postcheckout_use_my_wallet_value}
        Click Confirm Checkout For The Post

Verify Post Checkout Page Loaded Successfully
       wait until page contains                  ${POST_CHECKOUT_PAGE_CHECKOUT_TEXT_APPEAR_SUCCESSFULLY}
       wait until element is enabled             ${POST_CHECKOUT_PAGE_WALLET_RADIO_BUTTON_APPEAR_SUCCESSFULLY}


Select Knet Payment Method
        Run Keyword until Success    seleniumlibrary.click element                            ${POSTCHECKOUT_SELECT_KNET_METHOUD}

Select Wallet Payment Method
        Run Keyword until Success    seleniumlibrary.click element                            ${POSTCHECKOUT_SELECT_WALLET_METHOUD}

Insert Value In Use My Wallet Field
    [Arguments]      ${postcheckout_use_my_wallet_value}
    Activate Use My Wallet Toggle
    Run Keyword until Success    seleniumlibrary.input text         ${POSTCHECKOUT_USE_MY_WALLET_FIELD}          ${postcheckout_use_my_wallet_value}

Activate Use My Wallet Toggle
         mouse down                                  ${POSTCHECKOUT_ACTIVATE_USEMYWALLET_TOGGLE}
         mouse up                                    ${POSTCHECKOUT_ACTIVATE_USEMYWALLET_TOGGLE}

Click Confirm Checkout For The Post
        Run Keyword until Success    seleniumlibrary.click element                   ${POSTCHECKOUT_CONFIRM_CHECKOUT_BUTTON}

Verify Created Post By Wallet Successfull Msg Appear
    wait until element is visible    ${POST_CHECKOUT_CREATED_POST_BY_WALLET_SUCCESSFULL_MSG_APPEAR}

Verify Created Post By Post Manager Page Appear Successfully
    verify Post Manager Page Loaded Suceesfully

Verify That Post Is Created Successfully
      Close Successfull MSG
#    sleep    5
#    Verify Created Post By Post Manager Page Appear Successfully


