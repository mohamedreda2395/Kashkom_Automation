*** Settings ***
Library    AppiumLibrary

*** Variables ***

#CommonLocators
${Notification_Permission_Allow_Button}     //android.widget.Button[@resource-id='com.android.permissioncontroller:id/permission_allow_button']
${Notification_Permission_Don'tAllow_Button}    //android.widget.Button[@resource-id='com.android.permissioncontroller:id/permission_deny_button']


${Location_Permission_WhileUsing_Button}        //android.widget.Button[@resource-id='com.android.permissioncontroller:id/permission_allow_foreground_only_button']
${Location_Permission_OnlyThisTime_Button}          //android.widget.Button[@resource-id='com.android.permissioncontroller:id/permission_allow_one_time_button']
${Location_Permission_Don'tAllow_Button}        //android.widget.Button[@resource-id='com.android.permissioncontroller:id/permission_deny_button']

${Kashkom_Logo}       //android.widget.ImageView[@resource-id='com.qpn.kamashka:id/logoIv']
