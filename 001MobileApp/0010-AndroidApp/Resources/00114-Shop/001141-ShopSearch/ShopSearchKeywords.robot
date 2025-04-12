*** Settings ***
Resource           ../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./ShopSearchLocators.robot
Resource    ././0011410-ShopSearchResult/ShopSearchResultKeywords.robot

*** Keywords ***

Insert Product Name To Search For
  [Arguments]    ${product_name}
   Run Keyword until Success    seleniumlibrary.input text                       ${SHOP_SEARCH_SEARCH_BAR}   ${product_name}



click magnifier icon
    Run Keyword until Success    seleniumlibrary.click element    ${SHOP_SEARCH_MAGNIFIER_ICON}


Verify product appear
    [Arguments]    ${product_name}=RWE
    wait until page contains         ${product_name}