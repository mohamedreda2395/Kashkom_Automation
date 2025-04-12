*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${MY_ORDERS_DETAILS_BUTTON}     //div[@class='orders-wrapper active relative']//div[1]//div[1]//div[3]//div[2]//a[1]
${MY_ORDERS_ORDER_TRACK_BUTTON}     //div[@class='orders-wrapper active relative']//div[1]//div[1]//div[3]//div[2]//a[2]
${MY_ORDERS_RETURN_BUTTON}      //a[normalize-space()='Return']