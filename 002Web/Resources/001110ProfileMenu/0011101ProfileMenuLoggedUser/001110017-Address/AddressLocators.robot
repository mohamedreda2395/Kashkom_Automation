*** Settings ***
Library      SeleniumLibrary

*** Variables ***
${Address_Add_new_button}                   id=create-new-address-button
${Address_Insert-Address_Name}              name=name
${Address_insert_Current_Location}          xpath=/html[1]/body[1]/div[6]/div[1]/div[1]/div[1]/div[1]/form[1]/div[2]/div[1]/div[2]/a[1]
${Address_Insert_First_Name}                name=first_name
${Address_Insert_Last_Name}                 name=last_name
${Address_Scrolling_TO_Page_Down}           window.scrollTo(0,850)
${Address_Choose_Governorate}               governorate_id
${Address_Choose_Area}                      area_id
${Address_Insert_Block_Number}              name=block_number
${Address_Insert_Street_Name}               name=street_name
${Address_Choose_Building_Type}             building_type_id
${Address_Insert_Floor_Number}              name=floor_number
${Address_Insert_Mobile_Number}             name=mobile
${Address_CLICK_ON_CREATE_BUTTON}           XPATH=//button[@class="btn btn-primary text-center btn-lg"]

${Address_Insert_Address_Name_Text}             home
${Address_Insert_First_Name_Text}               nada
${Address_Insert_Last_Name_Text}                nawar
${Address_Choose_Governorate_Id}                 1
${Address_Choose_Area_ID}                        1
${Address_Insert_Block_Number_Text}              5
${Address_Insert_Street_Name_Text}             elsahel
${Address_Choose_Building_Type_Id}                1
${Address_Insert_Floor_Number_Text}               6
${Address_Insert_Mobile_Number_Text}           12345698