*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${SELECT_PRODUCTS_SELECT_PRODUCTS_TO_RETURN_RADIO_BUTTON}    //label[@class='option-container checkbox-input']//span[@class='checkmark']
${SELECT_PRODUCTS_SELECT_RETURN_REASON_RADIO_BUTTON}  //*[@id="ajax-modal"]/div/div/div[2]/div[1]/div/label[1]/span
${SELECT_PRODUCTS_APPLY_BUTTON}    //button[@id='apply-return-reason-btn']
${SELECT_PRODUCTS_NEXT_BUTTON}      //button[@class='btn btn-primary text-center pl-5 pr-5 btn-lg send-return-products-btn']