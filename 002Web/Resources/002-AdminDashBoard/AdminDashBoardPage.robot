*** Settings ***
Library     SeleniumLibrary
Resource    ./AdminDashBoardKeywords.robot
Resource    ../../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/00111011MyStoreStatus/001110111StoreDashboard/001110102-Orders/0011101020-OrdersStatus/OrderStatusPage.robot
*** Keywords ***

Go To Admin Dash Board Page
    [Arguments]    ${username}     ${password}
    Navigate To Admin Dash Board    ${username}     ${password}

Approve A Particular Post
    [Arguments]    ${admin_dash_board_status_list_approved_status}=Approved
    AdminDashBoardKeywords.Verify That Admin Dash Board Loaded Successfully
    AdminDashBoardKeywords.Select Posts Tab
    AdminDashBoardKeywords.Search For Post
    AdminDashBoardKeywords.View Post Detail
    AdminDashBoardKeywords.Approave The Post     ${admin_dash_board_status_list_approved_status}

Logout From Admin Dash Board
    AdminDashBoardKeywords.Logout

Reply ticket and close it
      Open tab of tickets
      Open ticket
      Reply ticket
      Close ticket


Update Order Status To Delivered Status Throgh Admin Dashboard
    Open Orders Tab
    Update Order Status

Update Returned Order Status To Returned To Store Status Throgh Admin Dashboard
    Open Orders Tab
    Update Delivered Order Status

Create Test User
    Open Users Tab
    Click on Create Test User
    Insert Test User Name
    Insert Test User Mail
    Insert Test User Password
    Insert Test User Confirmation Password
    Select User Country
    Insert Test Mobile Number
    Click On Create Test User Button
    Click on View User Icon
    Click on Balance Tab
    Click on Create Balance Button
    Insert Balance Amount
    Click on Add Amount Button
    Open Users Tab
