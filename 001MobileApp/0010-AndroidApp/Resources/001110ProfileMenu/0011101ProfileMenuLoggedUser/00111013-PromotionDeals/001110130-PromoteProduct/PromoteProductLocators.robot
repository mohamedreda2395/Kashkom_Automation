*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${PROMOTE_PRODUCT_TITLE_TEXT}         //div[@id='deal-post-wrapper-ynosQJ4lsw']//input[@name='title']
${PROMOTE_PRODUCT_DESCRIPTION_TEXT}   //div[@id='deal-post-wrapper-ynosQJ4lsw']//textarea[@name='description']
${PROMOTE_PRODUCT_CHOOSEASSET}      //*[@id="deal-post-wrapper-ynosQJ4lsw"]/form/div/div/div[1]/div/div/i
${PROMOTE_PRODUCT_SAVE_BUTTON}      //div[@id='deal-post-wrapper-ynosQJ4lsw']//button[@type='submit'][normalize-space()='Save']
${PROMOTE_PRODUCT_PREVIEW_BUTTON}     //a[@class='btn btn-primary btn-lg']