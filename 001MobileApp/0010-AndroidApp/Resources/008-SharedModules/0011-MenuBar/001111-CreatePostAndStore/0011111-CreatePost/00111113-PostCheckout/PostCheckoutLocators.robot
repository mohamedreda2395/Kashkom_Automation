*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${POSTCHECKOUT_SELECT_WALLET_METHOUD}             xpath=/html/body/div[6]/div/div/div/form/div[1]/label[2]/span
${POSTCHECKOUT_SELECT_KNET_METHOUD}               xpath=/html/body/div[6]/div/div/div/form/div[1]/label[1]/span
${POSTCHECKOUT_ACTIVATE_USEMYWALLET_TOGGLE}        id=use-my-wallet-checkbox
${POSTCHECKOUT_CONFIRM_CHECKOUT_BUTTON}           xpath=/html/body/div[6]/div/div/div/form/div[2]/div/button
${POSTCHECKOUT_USE_MY_WALLET_FIELD}               //*[@id="use-my-wallet-amount-wrapper"]/div/input