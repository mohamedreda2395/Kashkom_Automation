*** Settings ***
Library    SeleniumLibrary
Resource    ./StoreDashboardKeywords.robot
Resource    ../../../../00111-Home/Home.robot
*** Keywords ***

Verify That Store Dashboard Page Is Successfully Loaded
    StoreDashboardKeywords.Verify Dashboard Header Text Appear on Dashboard Page
#    StoreDashboardKeywords.Verify By Kamashka Text Appear on Dashboard Page

Activate my store
    StoreDashboardKeywords.Active toggle my store
    StoreDashboardKeywords.Verify active store successfully

Deactivate my store
    StoreDashboardKeywords.Inactive toggle my store
    StoreDashboardKeywords.Verify deactive store successfully

Navigate to Home Page Through Store Dashboard
    StoreDashboardKeywords.Click On Kamashka Home Label

Navigate to products list
     StoreDashboardKeywords.Click on Product Tab

Navigate to Orders List
     StoreDashboardKeywords.Click on Orders Tab

Navigate to Home List
    Click on Home List

Navigate to Return Orders List
     StoreDashboardKeywords.Click on Return Orders Tab