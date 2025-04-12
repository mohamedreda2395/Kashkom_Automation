*** Settings ***
Library     SeleniumLibrary
Resource  ./CreatePostKeyWords.robot
Resource  ../0011111-CreatePost/00111112-PostConfirmPage/PostConfirmPageKeywords.robot
Resource  ../0011111-CreatePost/00111111CreateTargetAudience/CreateTargetAudienceKeywords.robot
Resource  ../0011111-CreatePost/00111113-PostCheckout/PostCheckoutKeywords.robot
Resource  ../../../0013-Knet/KnetKeywords.robot
Resource  ../../../../002-AdminDashBoard/AdminDashBoardPage.robot
Resource    ../../../../001-SharedModules/0011-Header/001111-CreatePostAndStore/CreatePostAndStorePopup.robot
Resource    ../../../../001110ProfileMenu/0011101ProfileMenuLoggedUser/ProfileKeywords.robot
*** Keywords ***

Create Post
        [Arguments]         ${post_title}=Ahmed       ${description_title}=Elsayed      ${post_asset_path}=${CREATEPOST_POSTASSET}         ${post_keyword_text}=12354
        CreatePostKeyWords.Verify Creeate Post Page Loaded Successfully
        CreatePostKeyWords.Insert Title And Description Of The Post                ${description_title}
        sleep    3
        CreatePostKeyWords.Upload Asset                                     ${post_asset_path}
        sleep    7
#       [Arguments]     ${targetaudiencetitle_text}
#        CreateTargetAudienceKeyWords.Create Target Audience     ${targetaudiencetitle_text}
        CreateTargetAudienceKeyWords.Create Target Audience
        CreatePostKeyWords.Select The Target Audience
#        CreatePostKeyWords.Select Product From My Store Radio Button
#        CreatePostKeyWords.Select Product From Link Product Page
#        CreatePostKeyWords.Select Extra Link Radio Button
        CreatePostKeyWords.Choose Package
        CreatePostKeyWords.Insert Post Keyword                              ${post_keyword_text}
        CreatePostKeywords.Preview Post

Confirm Post
        PostConfirmPageKeywords.Click On Confirm Post

Checkout For The Post By Using Wallet
        PostCheckoutKeywords.Post Place Order With Wallet

Checkout For The Post By Using Knet
#            [Arguments]      ${postcheckout_use_my_wallet_value}=0.125
#        PostCheckoutKeywords.Post Place Order With Knet   ${postcheckout_use_my_wallet_value}
     [Arguments]  ${postcheckout_use_my_wallet_value}=0.125    ${knet_select_bank}=Knet Test Card [KNET1]    ${knet_card_number}=0000000001  ${knet_select_month}=09   ${knet_select_year}=2025  ${knet_pin_number}=1234
        PostCheckoutKeywords.Post Place Order With Knet     ${postcheckout_use_my_wallet_value}
        KnetKeywords.Insert Credintials Of Knet Method And Submit      ${knet_select_bank}  ${knet_card_number}    ${knet_select_month}    ${knet_select_year}    ${knet_pin_number}

Approave The Post From Admin Dash Board
    AdminDashBoardPage.Approve A Particular Post

Complete Scenario Of Posts Creation
    Go To Create Post Page
    Create Post
    Confirm Post
    Checkout For The Post By Using Wallet
    Navigate To Profile Page
    Logout From Kamashka
    Go To Admin Dash Board Page    super_admin@app.com     password
    Approave The Post From Admin Dash Board
    Logout From Admin Dash Board
