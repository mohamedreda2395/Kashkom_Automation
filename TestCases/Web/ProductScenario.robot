*** Settings ***
Resource    ../../002Web/Resources/003-UserManagement/0011101-Login/LoginPage.robot
Resource    ../../002Web/Resources/001-SharedModules/0011-Header/Header.robot
Resource    ../../002Web/Resources/000-Common/CommonKeyWords.robot
Resource    ../../002Web/Resources/003-UserManagement/UserManagementPage.robot
Resource    ../../002Web/Resources/00114-Shop/001141-ShopSearch/0011410-ShopSearchResult/ShopSearchResult.robot
Resource    ../../002Web/Resources/00114-Shop/001140-StorePage/0011400-Products/00114000-ProductDetails/ProductDetails.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/00111011MyStoreStatus/MyStoreStatus.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/00111011MyStoreStatus/001110111StoreDashboard/StoreDashboard.robot
Resource    ../../002Web/Resources/00114-Shop/001141-ShopSearch/ShopSearch.robot
Resource    ../../002Web/Resources/00119-Cart/001190-CheckOut/CheckoutPage.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/00111011MyStoreStatus/001110111StoreDashboard/001110102-Orders/OrdersPage.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/00111011MyStoreStatus/001110111StoreDashboard/001110102-Orders/0011101020-OrdersStatus/OrderStatusPage.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/00111011MyStoreStatus/001110111StoreDashboard/00111011110-ReturnOrders/ReturnOrdersPage.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/00111011MyStoreStatus/001110111StoreDashboard/00111011110-ReturnOrders/001110111100-ReturnOrdersStatus/ReturnOrdersStatusPage.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/Profile.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/00111014-MyOrders/MyOrdersPage.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/00111014-MyOrders/001110141-SelectProducts/SelectProductsPage.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/00111014-MyOrders/001110141-SelectProducts/0011101410-Return/ReturnPage.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/00111015-MyReturns/MyReturns.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/00111011MyStoreStatus/001110111StoreDashboard/001110101Products/ProductsPage.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/00111011MyStoreStatus/001110111StoreDashboard/001110101Products/0011101010-EditProduct/EditProduct.robot
Resource    ../../002Web/Resources/00119-Cart/CartKeywords.robot
Resource    ../../002Web/Resources/00111-Home/HomeKeywords.robot
Resource    ../../002Web/Resources/0011111LandingPage/LandingPage.robot
Resource    ../../002Web/Resources/002-AdminDashBoard/AdminDashBoardPage.robot
Resource    ../../002Web/Resources/001110ProfileMenu/0011101ProfileMenuLoggedUser/001110017-Address/AddressPage.robot


Suite Setup        run keywords     CommonKeywords.Begin Web Test      check that user able to create test user     Check That store owner able to active his store
#Suite Setup        run keywords    CommonKeywords.Begin Web Test    Check That store owner able to active his store     Check That Kamshka Sore Owner User Able To Update Product Quantity
Suite Teardown     run keywords    Check That User Able To Delete His Account     Check That store owner able to Deactivate his store    CommonKeywords.End Web Test
#Suite Teardown     run keywords    Check That store owner able to Deactivate his store     CommonKeywords.End Web Test
*** Keywords ***

check that user able to create test user
     Open Login DropDown Menu
     Navigate to login page
     SignIn     super_admin@app.com     192873@Admin
     Create Test User
     Logout From Admin Dash Board

Check That store owner able to active his store
    Open Login DropDown Menu
    Navigate to login page
    SignIn    user2@app.com    12345A@a
    Navigate To Profile Page
    Navigate To My Store Page
    Navigate to store dashboard page
    Activate my store
    Navigate to home page Through Store Dashboard
    Navigate To Profile Page
    Logout From Kamashka

Check That User Able To Delete His Account
    Open Login DropDown Menu
    Navigate to login page
    SignIn    user14@app.com    12345A@a
    Navigate To Profile Page
    Profile.Delete My Account

Check That store owner able to Deactivate his store
    Open Login DropDown Menu
    Navigate to login page
    SignIn    user2@app.com    12345A@a
    Navigate To Profile Page
    Navigate To My Store Page
    Navigate to store dashboard page
    Activate my store
*** Test Cases ***

Add Address
    Open Login DropDown Menu
    Navigate to login page
    SignIn    user14@app.com    12345A@a
    Header.Navigate To Profile Page
    Navigate to my address
    open new address page
    insert your address name
    choose your location
    insert your first and last name       ahmed       reda
    select your governorate and area
    insert your block number and street name
    choose your building type
    insert your floor number and moobile
    Create Adress Button
    Assetion of Adress Creation
Check That Kamashka User Able To Place Order
     [Tags]   regrssion    high

    Navigate to Shop page
    Search For Product Through Shop Page     Clothes
    Navigate To Checout Page Through Shop Search Result
    Place Order
    Verify That My Order Page Is Successfully Appear
    Close Successfull MSG
    Navigate To Profile Page

Check That Kamshka Sore Owner User Able To Deliver Order
    Logout From Kamashka
    Go To Admin Dash Board Page         super_admin@app.com     192873@Admin
    Update Order Status To Delivered Status Throgh Admin Dashboard

Check That Kamashka User Able To Return Order
    Logout From Admin Dash Board
    Open Login DropDown Menu
    Navigate to login page
    SignIn                            user14@app.com    12345A@a
    Navigate To Profile Page
    Profile.Navigate To My Order Page
    Verify That My Order Page Is Successfully Appear
    Navigate To Select Order To Return Page
    Navigate To Return Page To Confirm Return
    Confirm Return Order
    Verify That Return Order is Successfully Placed
    Navigate To Profile Page

Check That Kamshka Sore Owner User Able To Return Order To Store
    Logout From Kamashka
    Go To Admin Dash Board Page         super_admin@app.com     192873@Admin
    Update Returned Order Status To Returned To Store Status Throgh Admin Dashboard
    Logout From Admin Dash Board






