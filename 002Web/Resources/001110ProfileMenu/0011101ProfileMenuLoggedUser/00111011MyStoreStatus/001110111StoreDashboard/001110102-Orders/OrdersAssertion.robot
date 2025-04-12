*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${ORDERS_LIST_SERIAL_ELEMENT_APPEAR}            //*[@id="orders-table"]/thead/tr/th[1]
${ORDERS_LIST_PLACED_STATUS_ELEMENT_APPEAR}     //*[@id="orders-table"]/tbody/tr[1]/td[5]/div