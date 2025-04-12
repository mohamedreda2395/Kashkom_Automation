*** Settings ***
Library     SeleniumLibrary
Resource    ../../../../../../002Web/Resources/000-Common/CommonVariables.robot

*** Variables ***
${CREATEPOST_CREATEPOST_TEXT}                      ${CREATEPOST_CREATEPOST_TEXT_DIC.${LANGUAGE}}
${CREATEPOST_CREATEPOST_TEXT_EN}                      Create post
${CREATEPOST_CREATEPOST_TEXT_AR}                      إنشاء المنشور
&{CREATEPOST_CREATEPOST_TEXT_DIC}                    en=${CREATEPOST_CREATEPOST_TEXT_EN}        ar=${CREATEPOST_CREATEPOST_TEXT_AR}
${CREATEPOST_ASSET_CLOSE_ICON_APPEAR}               //*[@id="thumb-1692407918084"]/a
