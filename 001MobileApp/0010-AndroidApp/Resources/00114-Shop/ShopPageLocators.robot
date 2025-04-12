*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${SHOPPAGE_CLICK_ON_SPECIFIC_STORE}    xpath=//div[@class='section-content']//div[2]//a[1]//div[2]
${SHOPPAGE_SLIDE_One_ELEMENT}          xpath=//*[@id="slick-slide00"]/a/img
${SHOPPAGE_SLIDE_Two_ELEMENT}          xpath=//*[@id="slick-slide10"]/a/img
${SHOPPAGE_SEARCH_BAR}                 //*[@id="top-header"]/div/div/div[3]/div/form/input
${SHOP_SEARCH_MAGNIFIER_ICON}          //*[@id="top-header"]/div/div/div[3]/div/form/button/i
${SHOP_PAGE_CATEGORIES_SEE_ALL}        //div[@class='section pt-3 pb-3 template-store-categories-slider-with-label-center-wrapper']//span[contains(text(),'See all')]




