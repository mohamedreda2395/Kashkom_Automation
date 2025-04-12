*** Settings ***
Library    SeleniumLibrary
Resource    ./MyStoreStatusKeywords.robot
*** Keywords ***





#Navigate to my store status page
#    Click On My Store Icon
#    Verify My Store Page Opened
#

Navigate to store dashboard page
    Verify My Store Status Page Opened
    Click On Dashboard Button


#    open_store_dashboard
#    verify_Dashboard_page_opened