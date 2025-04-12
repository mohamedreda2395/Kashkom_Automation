*** Settings ***
Library     SeleniumLibrary
Resource    ./LoginKeywords.robot
Resource   ../0011111LandingPage/LandingPage.robot
Resource  ../00111-Home/HomeKeywords.robot


*** Keywords ***

Login
        [Arguments]          ${mobile_num}
        set selenium speed    1s
        open browser    https://test.kashkom.com   chrome
        maximize browser window
        Loginkeywords.Handle Suggestions Dialogue If Present
        LoginKeywords.Open Login Dialogue
        LoginKeywords.Assert Login Dialogue Opened Successfully
        LoginKeywords.Insert Mobile Number    ${mobile_num}
        LOGINKEYWORDS.SUBMIT LOGIN

Assert login with exist number
        ASSERT OTP DIALOGUE OPENED SUCCESSFULLY

Assert login with new number
        Assert open create new account dialogue

Login with invalid number
        Assert invalid number validation appear

Insert valid otp
        LOGINKEYWORDS.INSERT OTP    1   2   3   4   5   6
        assert login suucessfully

Insert invalid otp
        LOGINKEYWORDS.INSERT OTP    1   1   1   1   1   1
        Assert invalid otp


#*** Test Cases ***
#
#login with valid number
#    [Tags]    regrssion     smoke
#    set selenium speed    1s
#    Login    ${VALID_NUMBER}
#    assert otp dialogue opened successfully
#    close browser
#
#login with invalid number
#    Login    ${INVALID_NUMBER}
#    assert invalid number validation appear
#    close browser
#
#login with new number
#    Login    ${NEW_NUMBER}
#    assert open create new account dialogue
#    close browser
#
#login with valid otp
#    set selenium speed    1s
#    Login    ${VALID_NUMBER}
#    assert otp dialogue opened successfully
#    insert valid otp
#    close browser
#
#login with invalid otp
#    set selenium speed    1s
#    Login    ${VALID_NUMBER}
#    assert otp dialogue opened successfully
#    insert invalid otp
#    close browser
#
#assert Re-send otp button appear after 2 minutes
#    set selenium speed    1s
#    Login    ${VALID_NUMBER}
#    assert otp dialogue opened successfully
#    Asset resend-otp button appear after 2 minutes
#    close browser
#
#assert user can rsend otp successfully
#    set selenium speed    1s
#    Login    ${VALID_NUMBER}
#    assert otp dialogue opened successfully
#    Asset resend-otp button appear after 2 minutes
#    resend otp successfully
#    close browser
#
