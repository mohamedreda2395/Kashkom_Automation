*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${SEARCH-FIELD}                      xpath=//*[@id="top-header"]/div/div/div[3]/div/form/input
${SEARCH-BUTTON}                     xpath=//*[@id="top-header"]/div/div/div[3]/div/form/button
${SEARCH-USER-TAB}                   xpath=//*[@id="users-tab"]
${SEARCH-FOLLOW-BUTTON}              xpath=//div[@class='users-wrapper relative active']//div[1]//div[2]//a[1]
${SEARCH-FIELD-DOUBLE-CLICK }        xpath=//*[@id="top-header"]/div/div/div[3]/div/form/input
${SEARCH-PRESS-KEY-FROM-KEYBOARD}    xpath=//*[@id="top-header"]/div/div/div[3]/div/form/input
${SEARCH-STORE-TAB}                  xpath=//*[@id="stores-tab"]
${SEARCH-GROUP-TAB}                  xpath=//*[@id="groups-tab"]
${SEARCH-SCROLL-DOWN}                window.scrollTo(0,200)

${SEARCH-FOR-USER-TEXT}              qc.reda95@app.com
${SEARCH-FOR-STORE-TEXT}             town team
${SEARCH-FOR-GROUPS-TEXT}            public group
${SEARCH-FOR-POSTS-TEXT}             last
${SEARCH-DELETE-BUTTON}              \ue017
${SEARCH-PAGE_RESULT_SHOW_POST_BUTTON}          //body/div[contains(@class,'main-page-wrapper profile')]/div[@class='page-content']/div[@class='page-data w-100']/div[@class='search-results-wrapper']/div[@class='custom-tabs tabs-for-homepage w-100']/div[@id='nav-tabContent']/div[@id='posts']/div[@class='groups-search-results-wrapper posts-wrapper search-list relative active']/div[1]/a[1]
${SEARCH-POST-TAB}                         id=posts-tab
