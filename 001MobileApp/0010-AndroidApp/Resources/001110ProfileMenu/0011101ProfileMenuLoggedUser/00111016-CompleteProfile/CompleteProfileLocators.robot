*** Settings ***
Library    SeleniumLibrary


*** Variables ***


${USER-PROFILE-SCROLL-TO-ATTRIBUTES }                        window.scrollTo(0,200)
${USER-PROFILE-CLICK-ON-ATTRIBUTES }                         xpath=/html/body/div[6]/div/div[1]/div/div[3]/div/div/div/div
${USER-PROFILE-PRESSKEY-RIGHT-ARROW }                        xpath=/html/body/div[6]/div/div[1]/div/div[3]/div/div/div/div
${USER-PROFILE-CLICK-ON-NATIONALITY }                        xpath=/html/body/div[6]/div/div[1]/div/div[3]/div/div/div/div/div[5]/div/form/div[1]/span/span[1]/span
${USER-PROFILE-NATIONALITY-SEARCH}                           xpath=/html/body/span/span/span[1]/input
${USER-PROFILE-NATIONALITY-PRESSKEY-ENTER}                   xpath=/html/body/span/span/span[1]/input
${USER-PROFILE-NATIONALITY-SAVE-BUTTON}                      xpath=/html/body/div[6]/div/div[1]/div/div[3]/div/div/div/div/div[5]/div/form/div[2]/button
${USER-PROFILE-CLICK-ON-GOVERNORAE }                         xpath=//*[@id="select2-governorate-id-container"]
${USER-PROFILE-GOVERNORAE-SEARCH}                            xpath=/html/body/span/span/span[1]/input
${USER-PROFILE-GOVERNORAE-PRESSKEY-ENTER}                    xpath=/html/body/span/span/span[1]/input
${USER-PROFILE-GOVERNORAE-SAVE-BUTTON}                       xpath=/html/body/div[6]/div/div[1]/div/div[3]/div/div/div/div/div[7]/div/form/div[2]/button
${USER-PROFILE-CLICK-ON-AREA}                                xpath=//*[@id="select2-area-id-container"]
${USER-PROFILE-AREA-SEARCH}                                  xpath=//*[@class="select2-search__field"]
${USER-PROFILE-AREA-PRESSKEY-ENTER}                          xpath=//*[@id="select2-area-id-results"]
${USER-PROFILE-AREA-SAVE-BUTTON}                             xpath=//*[@id="profile-attribute-submit-area-btn"]
${USER-PROFILE-VERIFY-NUMBER-BUTTON}                         xpath=//div[@id='user-mobile-wrapper']//button[@type='submit'][normalize-space()='Verify']
${USER-PROFILE-VERIFY-NUMBER-OTP-FIELD1}                     xpath=//*[@id="activate-code"]/div[1]/input[1]
${USER-PROFILE-VERIFY-NUMBER-OTP-FIELD2}                     xpath=//*[@id="activate-code"]/div[1]/input[2]
${USER-PROFILE-VERIFY-NUMBER-OTP-FIELD3}                     xpath=//*[@id="activate-code"]/div[1]/input[3]
${USER-PROFILE-VERIFY-NUMBER-OTP-FIELD4}                     xpath=//*[@id="activate-code"]/div[1]/input[4]
${USER-PROFILE-CATEGORY-SKIP-BUTTON}                         xpath=/html/body/div[6]/div/div[1]/a
${USER-PROFILE-CLICK-ON-EDIT-ROFILE}                        xpath=/html/body/div[6]/div/div[1]/div/div[1]/div[2]/a[1]
${EDIT-PROFILE-SCROLL-TO-CATEGORIES }                       window.scrollTo(0,350)
${EDIT-PROFILE-SELECT-CATEGORY-SHOPPING }                   xpath=//button[normalize-space()='Shopping']
${EDIT-PROFILE-SELECT-CATEGORY-Music }                      xpath=//button[normalize-space()='Music']
${EDIT-PROFILE-SELECT-CATEGORY-Football }                   xpath=//button[normalize-space()='Football']
${EDIT-PROFILE-SELECT-CATEGORY-SOCIALMEDIA }                xpath=//button[normalize-space()='Social media']
${EDIT-PROFILE-SELECT-CATEGORY-Family }                     xpath=//button[normalize-space()='Family']
${EDIT-PROFILE-SELECT-CATEGORY-Movies }                     xpath=//button[normalize-space()='Movies']
${EDIT-PROFILE-SELECT-CATEGORY-Dance }                      xpath=//button[normalize-space()='Dance']
${EDIT-PROFILE-SAVE-BUTTON}                                 xpath=/html/body/div[6]/div/div[2]/div/form/div[3]/div[2]/button

${USER-PROFILE-PRESSKEY-RIGHT-ARROW-ASCIICODE}                              RIGHT
${USER-PROFILE-NATIONALITY-PRESSKEY-ENTER-ASCIICODE}                        \ue007
${USER-PROFILE-NATIONALITY-SEARCH-TEXT}                                     Egyptian
${USER-PROFILE-GOVERNORAE-SEARCH-TEXT}                                      AHMADI
${USER-PROFILE-AREA-SEARCH-TEXT}                                            AHMADI
${USER-PROFILE-VERIFY-NUMBER-OTP-FIELD1-TEXT}                             1
${USER-PROFILE-VERIFY-NUMBER-OTP-FIELD2-TEXT}                             1
${USER-PROFILE-VERIFY-NUMBER-OTP-FIELD3-TEXT}                             1
${USER-PROFILE-VERIFY-NUMBER-OTP-FIELD4-TEXT}                             1