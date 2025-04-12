*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${COD_METHOD}    //label[normalize-space()='Cash on delivery']
${PLACE_ORDER_BUTTON}    //button[normalize-space()='Place order']
${SUCCESSFULL_MSG_FOR_PLACED_ORDER}    Order placed successfully