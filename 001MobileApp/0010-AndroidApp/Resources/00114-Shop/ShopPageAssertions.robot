*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${SHOPPAGE_DELIVERY_TO_ELEMENT_SUCCSSFULLY_APPEAR}              xpath=//span[contains(@class,'d-flex justify-content-center align-items-center color-secondary mr-2')]
${SHOPPAGE_FEATURED_STORES_ELEMENT_SUCCSSFULLY_APPEAR}        xpath=//h3[normalize-space()='Featured stores']
${SHOPPAGE_SLIDE_3_ELEMENT_SUCCSSFULLY_APPEAR}              xpath=//*[@id="slick-slide20"]/a/img
${SHOPPAGE_STORE_CATEGORY_SLIDER_WITH_LABEL_CENTER_BELOW_SUCCSSFULLY_APPEAR}               Store category slider with label center below
${SHOPPAGE_STORE_CATEGORY_SLIDER_WITH_LABEL_CENTER_SUCCSSFULLY_APPEAR}                     Store category slider with label center
${SHOPPAGE_SEE_ALL_SPECIFIC_CATEGORY_SUCCSSFULLY_APPEAR}                     /html/body/div[6]/div/div/div/div[2]/div[1]/a/img
${SHOPPAGE_SPECIFIC_STORE_ELEMENT_SUCCSSFULLY_APPEAR}        xpath=//div[@class='section-content']//div[2]//a[1]//div[2]
${SHOPPAGE_Slide_Product_Card_SUCCSSFULLY_APPEAR}       xpath=//a[@href='https://test.kamashka.com/en/products/camera']//img[@class='img-fluid product-image lazyloaded']
