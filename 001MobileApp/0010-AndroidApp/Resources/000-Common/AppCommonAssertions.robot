*** Settings ***
Library    AppiumLibrary


*** Variables ***
${HEADER_Notification_Permission_TEXT}               ${HEADER_Notification_Permission_TEXT_DIC.${LANGUAGE}}
${HEADER_Notification_Permission_TEXT_EN}                    Allow Kashkom to send you notifications?
${HEADER_Notification_Permission_TEXT_AR}                    هل تريد السماح لتطبيق كاش كوم بإرسال إشعارات إليك؟
&{HEADER_Notification_Permission_TEXT_DIC}              en=${HEADER_Notification_Permission_TEXT_EN}    ar=${HEADER_Notification_Permission_TEXT_AR}



${HEADER_Location_Permission_TEXT}               ${HEADER_Location_Permission_TEXT_DIC.${LANGUAGE}}
${HEADER_Location_Permission_TEXT_EN}                    Allow Kashkom to access this device’s location?
${HEADER_Location_Permission_TEXT_AR}                    هل تريد السماح لتطبيق كاش كوم بالوصول إلى الموقع الجغرافي لهذا الجهاز؟
&{HEADER_Location_Permission_TEXT_DIC}              en=${HEADER_Location_Permission_TEXT_EN}    ar=${HEADER_Location_Permission_TEXT_AR}

