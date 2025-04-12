*** Settings ***
Resource           ../../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library     SeleniumLibrary
Resource    ./PromoteProductAssertions.robot
Resource    ./PromoteProductLocators.robot

*** Keywords ***

Verify That Promote Product Page Is Successfully Appear
    wait until page contains         ${PROMOTE_PRODUCT_PROMOTE_PRODUCT_TEXT_APPEAR}
    wait until element is visible    ${PROMOTE_PRODUCT_PREVIEW_BUTTON_VISABLE}

Insert Title and Description
    Insert Title
    Insert Description



Insert Title
    Run Keyword until Success    seleniumlibrary.input text    ${PROMOTE_PRODUCT_TITLE_TEXT}

Insert Description
    Run Keyword until Success    seleniumlibrary.input text      ${PROMOTE_PRODUCT_DESCRIPTION_TEXT}

Upload Asset For Product
            [Arguments]               ${product_asset_path}=C:\\Users\\11224\\Desktop\\New folder (4)\\1.jpg
    choose file     ${PROMOTE_PRODUCT_CHOOSEASSET}    ${product_asset_path}

Click on Save Button
    Run Keyword until Success    seleniumlibrary.click element    ${PROMOTE_PRODUCT_SAVE_BUTTON}

Click on Preview
    Run Keyword until Success    seleniumlibrary.click element    ${PROMOTE_PRODUCT_PREVIEW_BUTTON}

Verify That Product Is Sucessfully Previewed With Asset
    wait until element is visible    ${PROMOTE_PRODUCT_GO_TO_PRODUCT_TEXT_APPEAR}