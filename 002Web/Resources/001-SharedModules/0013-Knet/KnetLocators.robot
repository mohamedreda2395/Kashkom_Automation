*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${KNET_BANKS_LIST}              id=bankBrand
${KNET_CARD_NUMBER_FIELD}       xpath=//*[@id="debitNumber"]
${KNET_MONTHES_LIST}            xpath=//*[@id="cardExpdate"]/div[2]/select[1]
${KNET_YEARS_LIST}              xpath=//*[@id="cardExpdate"]/div[2]/select[2]
${KNET_PIN_NUMBER_FIELD}        xpath=//*[@id="cardPin"]
${KNET_SUBMIT_BUTTON}           xpath=/html/body/form/div[1]/div/div[2]/div[4]/div/input[1]