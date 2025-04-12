*** Settings ***
Library  AppiumLibrary
Resource  ./UserManagementKeywords.robot
Resource  ./UserManagementVariables.robot
Library  SeleniumLibrary
Resource  ../../../../002Web/Resources/000-Common/CommonKeyWords.robot

*** Keywords ***
Login with exist number
    insert exist mobile number      ${Login_Mobile}
    Assert login button is enable after insert mobile
    click on login
    Assert open OTP screen
    insert valid OTP

Login with new number
    insert new mobile number    ${SignUp_Mobile}
    Assert login button is enable after insert mobile
    click on login
    Assert open Signup screen
    insert gender as male in sign up screen
    insert full name in signup screen    ${Full_Name}

Delete mobile that i logged with it
    [Arguments]     ${mobile}
    open browser    https://test.kashkom.com/admin_login   chrome
    maximize browser window
    set selenium speed  1
    #Login as admin
    run keyword until success    seleniumlibrary.input text      xpath=//input[@name="email"]        super_admin@app.com
    run keyword until success    seleniumlibrary.input text      xpath=//input[@name="password"]        password
    run keyword until success    seleniumlibrary.click element    xpath=//button[contains(text(),"Login")]
    #open users page
    run keyword until success    seleniumlibrary.click element    xpath=//a[@href="https://test.kashkom.com/admin/users"]
    #search for mobile
    run keyword until success    seleniumlibrary.input text     xpath=//input[@id="data-table-search"]        ${mobile}
    #open as user
    run keyword until success    seleniumlibrary.click element    xpath=//*[@id="users-table"]/tbody/tr/td[7]/a[1]
    #open profile
    run keyword until success    seleniumlibrary.click element    xpath=//a[@href="https://test.kashkom.com/profile"]
    #open setting
    run keyword until success    seleniumlibrary.click element    xpath=//a[@href="https://test.kashkom.com/profile/settings"]
    #click on delete
    run keyword until success    seleniumlibrary.click element    xpath=//a[@data-modal-title="Delete my account"]
    #choose first choice
    run keyword until success    seleniumlibrary.select radio button    delete_account_reason_id     1
    #click on confirm delete
    run keyword until success    seleniumlibrary.click element    xpath=//*[@id="ajax-modal"]/div/div/div[2]/form/div[2]/button[2]
    #assert delete accoiunt successfully
    run keyword until success    seleniumlibrary.wait until element is enabled   //a[contains(text(),"Login")][@data-target="#auth-modal"]
    #Close browser
    close browser


