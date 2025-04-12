*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${POST_STATISTICS_DELETE_PENDING_POST_ICON}                     xpath=//*[@id="ajax-modal"]/div/div/div[2]/div/ul/li[2]/a/span
${POST_STATISTICS_DELETE_ACTIVE_POST_ICON}                      xpath=//*[@id="ajax-modal"]/div/div/div[2]/div/ul/li[3]/a/span
${POST_STATISTICS_EDIT_ICON}                                    xpath=//*[@id="ajax-modal"]/div/div/div[2]/div/ul/li[1]/a/span
${POST_STATISTICS_INCREASEBUDGET_ICON}                          xpath=//*[@id="ajax-modal"]/div/div/div[2]/div/ul/li[2]/a/span
${POST_STATISTICS_INCREASEBUDGET_FIELD}                         xpath=//*[@id="number-of-audience"]
${POST_STATISTICS_INCREASEBUDGET_BUTTON}                        xpath=//*[@id="ajax-modal"]/div/div/div[2]/div/form/div[5]/button
${POST_STATISTICS_CONFIRM_DELETE_POST_BUTTON}                   xpath=//*[@id="ajax-modal"]/div/div/div[2]/form/div/button[2]