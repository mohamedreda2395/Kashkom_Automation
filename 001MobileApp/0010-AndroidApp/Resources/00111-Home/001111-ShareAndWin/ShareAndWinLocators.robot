*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${SHARE_BUTTON}    (//a[@class='btn btn-primary ajax-modal'][normalize-space()='Share & win'])[1]
${SHARE_OPTIONS_POPUP_HEADER}    Refer to your friend and get cash
${SHARE_TO_FRIEND_BUTTON}    //*[@id="share-to-friend-btn"]
${SHARE_ON_Kamashka}    //*[@id="share-on-kamashka"]
${SHARE_TO_GROUP}    //*[@id="share-to-group-btn"]
${FACEBOOK_ICON}    //*[@id="ajax-modal"]/div/div/div[2]/div[2]/ul/li[1]/a
${COPY-LINK-BTN}    //*[@id="copy-link-btn"]/i
${CLOSE_BUTTON_FOR_SHARE_OPTIONS}    (//i[@class='icon icon-close'])[9]
${CLOSE_BUTTON_FOR_POST_FULL_SCREEN}    //i[@class='close-fullscreen-modal icon icon-close']
${SHARE_OPTIONS_FRAME}    //*[@id="ajax-modal"]/div/div
