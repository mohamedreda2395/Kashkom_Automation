*** Settings ***
Library     SeleniumLibrary
Resource   ./ProductsKeywords.robot
*** Keywords ***
Open Product Through Store Page
     [Arguments]                          ${storepage_product_list_search_for_product_text}=RWE
    ProductsKeywords.Verify That Products List Is Sucssefully Appear
    ProductsKeywords.Store Page Search For Product         ${storepage_product_list_search_for_product_text}
    wait until page contains                               ${storepage_product_list_search_for_product_text}
    ProductsKeywords.Click on Specific Product Card To Navigate