*** Settings ***
Library       SeleniumLibrary
Resource     ./AddressLocators.robot
Resource     ./AddressAssertions.robot
Resource     ./AddressKeywords.robot



*** Variables ***


*** Keywords ***
open new address page
     click on new addresses button
insert your address name
            [Arguments]                        ${Address_Insert_Address_Name_Text_ARG}=${Address_Insert_Address_Name_Text}

           insert adress name                   ${Address_Insert_Address_Name_Text_ARG}
choose your location
           choose current location
insert your first and last name
            [Arguments]                       ${Address_Insert_First_Name_Text_ARG}=${Address_Insert_First_Name_Text}         ${Address_Insert_Last_Name_Text_ARG}=${Address_Insert_Last_Name_Text}

           insert your name                   ${Address_Insert_First_Name_Text_ARG}         ${Address_Insert_Last_Name_Text_ARG}
select your governorate and area
           [Arguments]                         ${Address_Choose_Governorate_Id_ARG}=${Address_Choose_Governorate_Id}          ${Address_Choose_Area_ID_ARG}=${Address_Choose_Area_ID}

           choose governorate and area         ${Address_Choose_Governorate_Id_ARG}          ${Address_Choose_Area_ID_ARG}
insert your block number and street name
           [Arguments]                              ${Address_Insert_Block_Number_Text_ARG}=${Address_Insert_Block_Number_Text}       ${Address_Insert_Street_Name_Text_ARG}=${Address_Insert_Street_Name_Text}

           insert block number and street name      ${Address_Insert_Block_Number_Text_ARG}       ${Address_Insert_Street_Name_Text_ARG}
choose your building type
            [Arguments]                       ${Address_Choose_Building_Type_Id_ARG}=${Address_Choose_Building_Type_Id}

           choose building type                ${Address_Choose_Building_Type_Id_ARG}
insert your floor number and moobile

           insert floor number and mobile         6    56231100


Create Adress Button
    click on create address button

Assetion of Adress Creation
    [Arguments]    ${Address_Insert_Address_Name_Text_ARG}=${Address_Insert_Address_Name_Text}
    check that new address created                         ${Address_Insert_Address_Name_Text_ARG}