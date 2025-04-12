*** Settings ***
Resource           ../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library       SeleniumLibrary
Resource    ./AddressLocators.robot
Resource     ./AddressAssertions.robot



*** Variables ***


*** Keywords ***

click on new addresses button
        WAIT UNTIL PAGE CONTAINS     ${Address-Verify_My_Shipping_Address_load}
        Run Keyword until Success    seleniumlibrary.click element                ${Address_Add_new_button}
insert adress name
        wait until page contains     ${Address-Verify_Add_New_Shipping_Address_Load}
        Run Keyword until Success    seleniumlibrary.input text                   ${Address_Insert-Address_Name}               ${Address_Insert_Address_Name_Text}
choose current location
        Run Keyword until Success    seleniumlibrary.click element                ${Address_insert_Current_Location}
insert your name
        Run Keyword until Success    seleniumlibrary.input text                   ${Address_Insert_First_Name}                 ${Address_Insert_First_Name_Text}
        Run Keyword until Success    seleniumlibrary.input text                   ${Address_Insert_Last_Name}                  ${Address_Insert_Last_Name_Text}
choose governorate and area
        execute javascript           ${Address_Scrolling_TO_Page_Down}
        select from list by index    ${Address_Choose_Governorate}                ${Address_Choose_Governorate_Id}
        select from list by index    ${Address_Choose_Area}                       ${Address_Choose_Area_Text}
insert block number and street name
        Run Keyword until Success    seleniumlibrary.input text                   ${Address_Insert_Block_Number}              ${Address_Insert_Block_Number_Text}
        Run Keyword until Success    seleniumlibrary.input text                   ${Address_Insert_Street_Name}               ${Address_Insert_Street_Name_Text}
choose building type
        select from list by index    ${Address_Choose_Building_Type}              ${Address_Choose_Building_Type_Id}
insert floor number and mobile number
        Run Keyword until Success    seleniumlibrary.input text                   ${Address_Insert_Floor_Number}               ${Address_Insert_Floor_Number_Text}
        Run Keyword until Success    seleniumlibrary.input text                   ${Address_Insert_Mobile_Number}             ${Address_Insert_Mobile_Number_Text}


