*** Settings ***
Resource           ../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

Library       SeleniumLibrary
Resource    ./AddressLocators.robot
Resource     ./AddressAssertions.robot



*** Variables ***

*** Keywords ***

click on new addresses button
        wait until page contains         ${Address-Verify_My_Shipping_Address_load}
        wait until element is visible    ${Address_Add_new_button}
        page should contain              ${Address-Verify_Add_New_Shipping_Address_Load}
        Run Keyword until Success        seleniumlibrary.click element                ${Address_Add_new_button}
insert adress name
       [Arguments]                        ${Address_Insert_Address_Name_Text_ARG}

        wait until element is visible    ${Address_Insert-Address_Name}
        page should contain              ${Address-Verify_Add_New_Address}

        Run Keyword until Success        seleniumlibrary.input text                   ${Address_Insert-Address_Name}               ${Address_Insert_Address_Name_Text_ARG}
choose current location
        wait until element is visible     ${Address_insert_Current_Location}
        page should contain               ${Address-Verify_LOCATION}
        Run Keyword until Success         seleniumlibrary.click element                ${Address_insert_Current_Location}
insert your name
           [Arguments]                    ${Address_Insert_First_Name_Text_ARG}        ${Address_Insert_Last_Name_Text_ARG}

        wait until element is visible     ${Address_Insert_First_Name}
        page should contain               ${Address-Verify_FIRST_NAME}
        Run Keyword until Success         seleniumlibrary.input text                   ${Address_Insert_First_Name}                  ${Address_Insert_First_Name_Text_ARG}
        wait until element is visible     ${Address_Insert_Last_Name}
        page should contain               ${Address-Verify_LAST_NAME}
        Run Keyword until Success         seleniumlibrary.input text                   ${Address_Insert_Last_Name}                  ${Address_Insert_Last_Name_Text_ARG}
choose governorate and area
        [Arguments]                        ${Address_Choose_Governorate_Id_ARG}        ${Address_Choose_Area_ID_ARG}

        execute javascript                 ${Address_Scrolling_TO_Page_Down}
        wait until element is visible      ${Address_Choose_Governorate}
        page should contain                ${Address-Verify_GOVERNORATE}
        select from list by index          ${Address_Choose_Governorate}                ${Address_Choose_Governorate_Id_ARG}
        wait until element is visible      ${Address_Choose_Area}
        page should contain                ${Address-Verify_AREA}
        select from list by index          ${Address_Choose_Area}                       ${Address_Choose_Area_ID_ARG}
insert block number and street name
        [Arguments]                         ${Address_Insert_Block_Number_Text_ARG}                 ${Address_Insert_Street_Name_Text_ARG}

        wait until element is visible       ${Address_Insert_Block_Number}
        page should contain                 ${Address-Verify_BLOCK_NUMBER}
        Run Keyword until Success           seleniumlibrary.input text                   ${Address_Insert_Block_Number}              ${Address_Insert_Block_Number_Text_ARG}
        wait until element is visible       ${Address_Insert_Street_Name}
        page should contain                 ${Address-Verify_STREET_NAME}
        Run Keyword until Success           seleniumlibrary.input text                   ${Address_Insert_Street_Name}               ${Address_Insert_Street_Name_Text_ARG}
choose building type
        [Arguments]                       ${Address_Choose_Building_Type_Id_ARG}

        wait until element is visible     ${Address_Choose_Building_Type}
        page should contain               ${Address-Verify_BUILDING_TYPE}
        select from list by index         ${Address_Choose_Building_Type}              ${Address_Choose_Building_Type_Id_ARG}
insert floor number and mobile
        [Arguments]                        ${Address_Insert_Floor_Number_Text_ARG}           ${Address_Insert_Mobile_Number_Text_ARG}

        wait until element is visible      ${Address_Insert_Floor_Number}
        page should contain                ${Address-Verify_FLOOR_NUMBER}
        Run Keyword until Success          seleniumlibrary.input text                   ${Address_Insert_Floor_Number}               ${Address_Insert_Floor_Number_Text_ARG}
        wait until element is visible      ${Address_Insert_Mobile_Number}
        page should contain                ${Address-Verify_MOBILE_NUMBER}
        Run Keyword until Success          seleniumlibrary.input text                   ${Address_Insert_Mobile_Number}             ${Address_Insert_Mobile_Number_Text_ARG}
click on create address button
        Run Keyword until Success         seleniumlibrary.click element                ${Address_CLICK_ON_CREATE_BUTTON}

check that new address created
        wait until page contains         ${Address-Verify_My_Shipping_Address_load}
        [Arguments]    ${Address_Insert_Address_Name_Text_ARG}
        page should contain              ${Address_Insert_Address_Name_Text_ARG}

