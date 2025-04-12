*** Settings ***
Library     SeleniumLibrary
*** Variables ***


${HOME_CHECKNOW_BUTTON}     //a[@class='btn btn-outline-primary mr-3']
${CREATEPOSTANDSTORE-CREATEBUTTON}        xpath=//*[@id="create-modal-btn"]
${Shop_Button_From_Menu}    //li[@class='menu-item']//a[normalize-space()='Shop']
${Wallet_Icon}              //*[@id="top-header"]/div/div/a[1]/div
${LIVE_STATISTICS_LIGHTER}  //a[@class="live-statistics-wrapper mr-3"]//*[local-name()='div' and @style="display: none"]
${FOLLOWING_TAB}            //a[@id='nav-following-tab']
${PLAY_ICON}               //div[@aria-label='1 / 5']//div[@class='video-section']//img[@class='img-fluid']
${PYTHON}                   python