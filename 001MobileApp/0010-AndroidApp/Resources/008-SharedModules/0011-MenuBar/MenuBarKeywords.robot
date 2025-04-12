*** Settings ***
Library     AppiumLibrary
Library     SeleniumLibrary
Resource         ../../../../../001MobileApp/0010-AndroidApp/Resources/000-Common/AppCommonKeywords.robot
Resource         ../../../../../001MobileApp/0010-AndroidApp/Resources/001-SharedModules/0011-MenuBar/MenuBarAssertions.robot
Resource         ../../../../../001MobileApp/0010-AndroidApp/Resources/001-SharedModules/0011-MenuBar/MenuBarLocators.robot


*** Keywords ***

verify That App Menu is Successfully Appear
        AppiumLibrary.wait until page contains element        ${APP_MENU_BAR}
Navigate To Profile Through Menu Bar
        AppiumLibrary.click element                           ${APP_MENU_PROFILE_ICON_TO_SIGN}
Navigate To Cart Through Menu Bar
        AppiumLibrary.click element                           ${APP_MENU_CART_ICON}
Navigate To Shop Through Menu Bar
        AppiumLibrary.click element                           ${APP_MENU_SHOP_ICON}
Navigate To Home Through Menu Bar
        AppiumLibrary.click element                           ${APP_MENU_HOME_ICON}

