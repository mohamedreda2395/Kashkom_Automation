*** Settings ***
Library      SeleniumLibrary
Resource    ./CommonVariables.robot


*** Keywords ***

Configure Test Timing
         set selenium implicit wait          ${COMMON_IMPLICIT_WAIT}
         set selenium timeout                ${COMMON_TIME_OUT}
         set selenium page load timeout      ${COMMON_LOAD_TIME_OUT}
         set selenium speed                  ${COMMON_SELENIUM_SPEED}


Run Keyword until Success
    [Documentation]     this keyword will help to make your test scuceeded and if failed it retry to make it success this could be used for clcik element/ button and Run Keyword until Success    seleniumlibrary.input text
    [Arguments]  ${KW}   @{KWARGS}   ${retry}=${RETRY}    ${retry_interval}=${RETRY_INTERVAL}
    BuiltIn.wait until keyword succeeds    ${retry}    ${retry_interval}    ${KW}     @{KWARGS}

Begin Web Test
        [Arguments]     ${url}=${URL}     ${browser}=${BROWSER}    ${alias}=${ALIAS}
        Configure Test Timing
       Run Keyword until Success     OPEN BROWSER   ${url}     ${browser}    ${alias}
       Run Keyword until Success    MAXIMIZE BROWSER WINDOW
        Handle Suggestions Dialog If Present

Close Post View
  Run Keyword until Success  SeleniumLibrary.click element                              ${COMMON_CLOSE_POST_VIEW}

Close Successfull MSG
    WAIT UNTIL ELEMENT IS ENABLED                                       ${COMMON_CLOSE_SUCCESS_MSG}
    Run Keyword until Success    seleniumlibrary.click element          ${COMMON_CLOSE_SUCCESS_MSG}
Close Suggestions Dialog
    SeleniumLibrary.wait until page contains     ${SUGGESTIONS_DIALOG_HEADER}
    Run Keyword until Success    SeleniumLibrary.click element    ${CLOSE_SUGGESTIONS_DIALOG_BTN}

Handle Dialog Before Every Step
      Run Keyword If Test Failed    Handle Suggestions Dialog If Present

#Handle Suggestions Dialog If Present
    ${dialog_present}    Run Keyword And Return Status    Element Should Be Visible    xpath=//div[@class='modal-dialog modal-md']//div[@class='modal-content']
    Run Keyword If    ${dialog_present}    Close Suggestions Dialog

Close Dialog
    wait until element is not visible        xpath=//div[@class='modal fade show']
    Run Keyword until Success    SeleniumLibrary.click element     ${CLOSE_SUGGESTIONS_DIALOG_BTN}

End Web Test
#        Handle Dialog Before Every Step
        close browser
