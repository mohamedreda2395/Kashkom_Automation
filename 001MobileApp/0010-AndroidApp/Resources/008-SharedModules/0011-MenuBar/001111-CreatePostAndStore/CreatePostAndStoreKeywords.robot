*** Settings ***
Resource           ../../../../../002Web/Resources/000-Common/CommonKeyWords.robot


Library     SeleniumLibrary
Resource    ./CreatePostAndStoreLocators.robot
Resource    ./CreatePostAndStoreAssertions.robot
*** Keywords ***
Verify Popup Of Create Post And Store Appear Successfully
        wait until page contains element        ${CREATEPOSTANDSTORE_CREATEPOST_TEXT}

Click On Create Post Button
         Run Keyword until Success    seleniumlibrary.click element                 ${CREATEPOSTANDSTORE-CREATEPOSTBUTTON}

Click On Create Store Button
         Run Keyword until Success    seleniumlibrary.click element                  ${CREATEPOSTANDSTORE_CREATESTORE_BUTTON}

Click On My Store Button
        Run Keyword until Success    seleniumlibrary.click element                  ${CREATEPOSTANDSTORE_MYSTORE_BUTTON}