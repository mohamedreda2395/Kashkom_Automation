*** Settings ***
Library     SeleniumLibrary
Resource    ./002Web/Resources/001-SharedModules/0011-Header/00114-Shop/001140-StorePage/0011400-Products/ProductsKeywords.robot

*** Keywords ***
Open Product Through Store Page
     [Arguments]                          ${storepage_product_list_search_for_product_text}=RWE
    ProductsKeywords.Verify That Products List Is Sucssefully Appear
    ProductsKeywords.Store Page Search For Product         ${storepage_product_list_search_for_product_text}
    wait until page contains                               ${storepage_product_list_search_for_product_text}
    ProductsKeywords.Click on Specific Product Card To Navigate