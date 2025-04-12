*** Settings ***
Library       SeleniumLibrary
Resource     ./AddressLocators.robot
Resource     ./AddressAssertions.robot
Resource     ./AddressKeywords.robot



*** Variables ***


*** Keywords ***
open new address page
     click on new addresses button
insert all data for shipping address
           insert adress name
           choose current location
           insert your name
           choose governorate and area
           insert block number and street name
           choose building type
           insert floor number and mobile number


