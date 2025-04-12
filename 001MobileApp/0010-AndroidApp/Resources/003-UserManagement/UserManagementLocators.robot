*** Settings ***
Library    AppiumLibrary

*** Variables ***
#Login screen
${Login_Login_Button}       //android.widget.Button[@resource-id='com.qpn.kamashka:id/nextBtn']
${Login_Mobile_Number}       //android.widget.EditText[@resource-id='com.qpn.kamashka:id/etPhone']
${Login_NeedHelp_Button}       //android.widget.TextView[@resource-id='com.qpn.kamashka:id/contactWhatsApp']
${Login_CountinueAsGuest_Button}       //android.widget.TextView[@resource-id='com.qpn.kamashka:id/tvContinueAsGuest']
${Login_LoginByGoogle_Button}       //android.widget.LinearLayout[@resource-id='com.qpn.kamashka:id/layoutGoogle']
${Login_LoginBtFacebook_Button}       //android.widget.LinearLayout[@resource-id='com.qpn.kamashka:id/layoutFacebook']
${Login_SelectCountry_Button}       //android.view.ViewGroup[@resource-id='com.qpn.kamashka:id/selectedCountryLayout']


#OTP screen
${OTP_Field_1}      //android.widget.EditText[@resource-id='com.qpn.kamashka:id/etN1']
${OTP_Field_2}      //android.widget.EditText[@resource-id='com.qpn.kamashka:id/etN2']
${OTP_Field_3}      //android.widget.EditText[@resource-id='com.qpn.kamashka:id/etN3']
${OTP_Field_4}      //android.widget.EditText[@resource-id='com.qpn.kamashka:id/etN4']
${OTP_Field_5}      //android.widget.EditText[@resource-id='com.qpn.kamashka:id/etN5']
${OTP_Field_6}      //android.widget.EditText[@resource-id='com.qpn.kamashka:id/etN6']
${OTP_EditNumber_Button}        //android.widget.TextView[@resource-id='com.qpn.kamashka:id/editBtn']

#SignUp screen
${SignUp_FullName_Text}     //android.widget.EditText[@resource-id='com.qpn.kamashka:id/etFullName']
${SignUp_EditNumber_Button}     //android.widget.EditText[@resource-id='com.qpn.kamashka:id/editPhone']
${SignUp_Cotinue_Button}     //android.widget.Button[@resource-id='com.qpn.kamashka:id/nextBtn']
${SignUp_Gender_Male_RadioButton}     //android.widget.RadioButton[@resource-id='com.qpn.kamashka:id/radioMan']
${SignUp_Gender_Female_RadioButton}     //android.widget.RadioButton[@resource-id='com.qpn.kamashka:id/radioWoman']











