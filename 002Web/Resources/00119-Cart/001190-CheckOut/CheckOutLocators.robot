*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${COD_METHOD}    //label[normalize-space()='Cash on delivery']
${Wallet_METHOD}   //label[normalize-space()='Wallet']//span[@class='checkmark']
${PLACE_ORDER_BUTTON}    //button[normalize-space()='Place order']
${SUCCESSFULL_MSG_FOR_PLACED_ORDER}    Order placed successfully