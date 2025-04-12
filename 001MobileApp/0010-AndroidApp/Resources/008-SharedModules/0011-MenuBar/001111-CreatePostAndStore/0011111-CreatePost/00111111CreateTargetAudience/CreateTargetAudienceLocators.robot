*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${CREATETARGETAUDIENCE-CREATETARGETAUDIENCEBUTTON}         xpath=//*[@id="create-audience-link"]
${CREATETARGETAUDIENCE-TARGETAUDIENCETITLE}                xpath=//*[@id="ajax-modal"]/div/div/div[2]/div/div/div/form/div[1]/input
${CREATE_TARGET_AUDIENCE_SELECT_GENDER_TYPE_BOTH}                   xpath=//*[@id="ajax-modal"]/div/div/div[2]/div/div/div/form/div[2]/div/div[3]/label/span
${CREATE_TARGET_AUDIENCE_SELECT_GENDER_TYPE_Female}                   xpath=//*[@id="ajax-modal"]/div/div/div[2]/div/div/div/form/div[2]/div/div[2]/label/span
${CREATE_TARGET_AUDIENCE_SELECT_GENDER_TYPE_Male}                   xpath=//*[@id="ajax-modal"]/div/div/div[2]/div/div/div/form/div[2]/div/div[1]/label/span
${CREATETARGETAUDIENCE-SELECTGCATEGORIES}                  xpath=//*[@id="ajax-modal"]/div/div/div[2]/div/div/div/form/div[3]/select
${CREATETARGET_AUDIENCE-SELECT_NATIONALITIES}              xpath=//*[@id="ajax-modal"]/div/div/div[2]/div/div/div/form/div[4]/select
${CREATETARGETAUDIENCE-SELECCURRENTLOCATION}               xpath=//*[@id="map-wrapper"]/div/div[3]/a
${CREATETARGETAUDIENCE-INCREASERADIUS}                     xpath=//*[@id="increment-radius"]
${CREATETARGETAUDIENCE-SAVETARGETAUDIENCE}                 xpath=//*[@id="ajax-modal"]/div/div/div[2]/div/div/div/form/div[11]/button
${CREATETARGETAUDIENCE-GOVERNORATEFIELD}                  xpath=//*[@id="governorate-id"]
${CREATETARGETAUDIENCE-AREAFIELD}                           xpath=//*[@id="area-id"]











