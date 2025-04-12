*** Settings ***
Library     SeleniumLibrary
*** Variables ***

${CREATEPOSTANDSTORE-CREATEBUTTON}        xpath=//*[@id="create-modal-btn"]
${HOME_CHECKNOW_BUTTON}     //a[@class='btn btn-outline-primary mr-3']

${Shop_Button_From_Menu}    //li[@class='menu-item']//a[normalize-space()='Shop']
${PYTHON}    python
${HOME_BUTTON_FROM_MENU}    //li[@class='menu-item']//a[normalize-space()='Home']
${Wallet_Icon}    //*[@id="top-header"]/div/div/a[1]/div
${PLAY_ICON}    (//img[@class='img-fluid'])[7]
${LIVE_STATISTICS_LIGHTER}    //a[@class="live-statistics-wrapper mr-3"]//*[local-name()='div' and @style="display: none"]
${FOLLOWING_TAB}    //a[@id='nav-following-tab']