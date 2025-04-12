*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${CREATEPOST-POSTTITLE}                                             name=title
${CREATEPOST-POSTDESCRIPTION}                                       xpath=//*[@id="post-form"]/div[2]/textarea
${CREATEPOST-UPLOADBUTTON}                                          xpath=//*[@id="post-form"]/div[3]/div[1]/button
${CREATEPOST-CHOOSEASSET}                                           id=upload
${CREATEPOST-SELECTTHEAUDIENCE}                                     xpath=//*[@id="post-form"]/div[4]/div[2]/div/div[1]/div[1]/label/span
${CREATEPOST-SELECTTHEEDITEDAUDIENCE}                               xpath=//*[@id="post-form"]/div[4]/div[1]/div/div[1]/div[1]/label/span
${CREATEPOST_CLOSE_SUCCESSFULL_MESSAGE_TO_SELECTTHEAUDIENCE}        xpath=//*[@id="post-form"]/div[4]/div[1]/div/div/div[1]/label/span
${CREATEPOST-SCROLL_INTO_VIEW_PACKAGE}                              xpath=//*[@id="post-form"]/div[6]/div/div/div/div[1]/label
${CREATEPOST-SELECT_PACKAGE}                                        xpath=//*[@id="post-form"]/div[6]/div/div/div/div[1]/label
${CREATEPOST-SCROLL_INTO_VIEW_KEYWORD}                              xpath=//*[@id="post-form"]/div[7]/span/span[1]/span/span/textarea
${CREATEPOST_KEYWORD_FIELD}                                         xpath=//*[@id="post-form"]/div[7]/span/span[1]/span/span/textarea
${CREATEPOST-SELECT_KEYWORD}                                        xpath=/html/body/span/span/span/ul/li
${CREATEPOST_SCROLL_INTO_VIEW_PREVIEW_POST_BUTTON}                  xpath=//*[@id="post-form"]/div[12]/button
${CREATEPOST_PREVIEW_BUTTON}                                        xpath=//*[@id="post-form"]/div[12]/button
${CREATEPOST_AUDIENCE_3_DOTS}                                       xpath=//*[@id="post-form"]/div[4]/div[1]/div/div[1]/div[2]/div/button
${CREATEPOST_Edit_AUDIENCE_Button}                                  xpath=//*[@id="post-form"]/div[4]/div[1]/div/div[1]/div[2]/div/div/a[1]
${CREATEPOST_LINK_PRODUCT_TOGGLE}                                   xpath=//*[@id="post-form"]/div[5]/div[1]/div
${CREATEPOST_SELECT_PRODUCT_FROM_MY_STORE_RADIO_BUTTON}             xpath= //*[@id="link-product-options-wrapper"]/div[1]/label/span
${CREATEPOST_EXTRA_LINK_RADIO_BUTTON}                               xpath= //*[@id="link-product-options-wrapper"]/div[2]/label/span
${CREATEPOST_SELECT_PRODUCT_FROM_MY_STORE}                          xpath= //*[@id="menu-all"]/div/div[3]
${CREATEPOST_EXTRA_LINK_TEXT_FIELD}                                 xpath= //*[@id="link-external-link-wrapper"]/div/input
#${CREATEPOST_PREVIEW_BUTTON}                                        xpath=/html/body/div[6]/div/div/div/form/div[11]




