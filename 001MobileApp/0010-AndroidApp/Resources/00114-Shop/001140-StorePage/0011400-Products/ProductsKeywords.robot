*** Settings ***
Resource           ../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./ProductsAssertions.robot
Resource    ./ProductsLocators.robot

*** Keywords ***
Verify That Products List Is Sucssefully Appear
    wait until element is visible    ${PRODUCTS_CARDS_APPEAR}

Store Page Search For Product
    [Arguments]                           ${storepage_product_list_search_for_product_text}=RWE
    Run Keyword until Success    seleniumlibrary.input text                            ${storepage_product_list_search_for_product_text}
    wait until page contains              ${storepage_product_list_search_for_product_text}



Click on Specific Product Card To Navigate
    Run Keyword until Success    seleniumlibrary.click element                         ${STOREPAGE_PRODUCT_LIST_OPEN_PRODUCT_CLICK}






Click On Filter Icon
    Run Keyword until Success    seleniumlibrary.click element        //*[@id="products-filter-modal-btn"]/i

Verify Filter Icon Opened Successfully
    wait until page contains    Filters
    wait until element is enabled    //*[@id="apply-products-filter-btn"]
    wait until element is enabled    //*[@id="reset-products-filter-btn"]

Close Filter List
    Run Keyword until Success    seleniumlibrary.click element    //*[@id="products-filter-modal"]/div/div/div[1]/button/i

Click On Sorting Icon
    Run Keyword until Success    seleniumlibrary.click element    //*[@id="products-sort-modal-btn"]/i

Verify Sorting Icon Opened Successfully
    wait until page contains    Sort
    wait until page contains    Apply
    wait until page contains    Reset