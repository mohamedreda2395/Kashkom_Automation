*** Settings ***
Library    AppiumLibrary


*** Variables ***
#select country screen
${SelectCountry_Kuwait_Button}    //android.widget.LinearLayout[@resource-id='com.qpn.kamashka:id/item_layout' and  @index='0']
${SelectCountry_Gizare_Button}    //android.widget.LinearLayout[@resource-id='com.qpn.kamashka:id/item_layout' and  @index='1']
${SelectCountry_Next_Button}      //android.widget.Button[@resource-id='com.qpn.kamashka:id/nextBtn']


#onboarding screens
${Onboarding_FirstScreen_Next}      //android.widget.Button[@resource-id='com.qpn.kamashka:id/nextBtn']
${Onboarding_SecondScreen_Next}      //android.widget.Button[@resource-id='com.qpn.kamashka:id/nextBtn']
${Onboarding_ThirdScreen_Start}      //android.widget.Button[@resource-id='com.qpn.kamashka:id/nextBtn']
