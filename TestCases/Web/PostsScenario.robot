*** Settings ***
Resource    ../../002Web/Resources/001-SharedModules/0011-Header/001111-CreatePostAndStore/CreatePostAndStorePopup.robot
Resource    ../../002Web/Resources/001-SharedModules/0011-Header/001111-CreatePostAndStore/0011111-CreatePost/CreatePostPage.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/00111012PostManager/PostManagerPage.robot
Resource    ../../002Web/Resources/002-AdminDashBoard/AdminDashBoardPage.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/00111012PostManager/001110120EditPost/EditPostKeywords.robot
Resource    ../../002Web/Resources/003-UserManagement/0011101-Login/LoginPage.robot
Resource    ../../002Web/Resources/0011111LandingPage/LandingPage.robot
Resource    ../../002Web/Resources/000-Common/CommonKeyWords.robot
Resource    ../../002Web/Resources/001-SharedModules/0011-Header/Header.robot
Resource    ../../002Web/Resources/00111-Home/HomeKeywords.robot
Resource    ../../002Web/Resources/001-SharedModules/0011-Header/001111-CreatePostAndStore/CreatePostAndStoreKeywords.robot
Resource    ../../002Web/Resources/003-UserManagement/UserManagementPage.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/ProfileKeywords.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/00111012PostManager/001110120PostStatistics/PostStatisticsKeywords.robot
Resource    ../../002Web/Resources/Search/SearchPage.robot
Resource    ../../002Web/Resources/00114-Shop/001140-StorePage/0011400-Products/00114000-ProductDetails/ProductDetailsKeywords.robot


Suite Setup       CommonKeywords.Begin Web Test         ${URL}      ${BROWSER}    first
Suite Teardown    CommonKeywords.End Web Test
*** Keywords ***


*** Test Cases ***
Check That Kamashka User able to Create Post
    Open Login DropDown Menu
    Navigate to login page
    SignIn                             user2@app.com    12345A@a
    Go To Create Post Page
    Create Post
    Confirm Post
    Checkout For The Post By Using Wallet
#    Close Successfull MSG
     sleep    3
    Post Manager Apppear Successfully
    Navigate To Profile Page
    Logout From Kamashka
    Go To Admin Dash Board Page         super_admin@app.com     192873@Admin
    Approave The Post From Admin Dash Board
    Logout From Admin Dash Board

#Check That amashka User able to Navigate To Product That Linked With Post
#    Open Login DropDown Menu
#    Navigate to login page
#    SignIn                               user700@app.com    12345A@a
#    Search for posts                    ${AUTO_POST_TITLE}
#    Click on Show Post Button
#    Click on Check Now Button
#    sleep    3
#    switch window
#    Close Post View
##    close window
##    Verify That Product Details Page Secessfully Appear     Cars
Check That Kamashka User able to Edit Post that on the search result From Post Manager Page
    Open Login DropDown Menu
    Navigate to login page
    SignIn                            user2@app.com    12345A@a
    Navigate To Profile Page
    Navigate To Post Manager Page
    Post Manager Apppear Successfully
    Search For A Particular Post
    Verify Popup Of Post Statistics Appear Successfully
    Click On Edit Icon
    Change Title And Description Of The Post
#    Upload Another Asset
#    sleep    6
    Edit Target Audience
    Select The Edited Target Audience
    Preview Edited Post
    Confirm Post
    Post Manager Apppear Successfully
    Navigate To Profile Page
    Logout From Kamashka
    Go To Admin Dash Board Page             super_admin@app.com     192873@Admin
    Approave The Post From Admin Dash Board
    Logout From Admin Dash Board

Check That Kamashka User able to Increase Post Budget that on the search result From Post Manager Page
    Open Login DropDown Menu
    Navigate to login page
    SignIn                                  user2@app.com    12345A@a
    Navigate To Profile Page
    Navigate To Post Manager Page
    Post Manager Apppear Successfully
    Search For A Particular Post
    Increase A Particular Post Budget
    Checkout For The Post By Using Wallet

Check That Kamashka User able to Delete the Post that on the search result From Post Manager Page

    Post Manager Apppear Successfully
    Search For A Particular Post
    Delete A Particular Post
    sleep    3