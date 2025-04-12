*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${POST_MANAGER_ACTIVE_Tab_APPEAR}                    xpath=//*[@id="nav-active-tab"]
${POST_MANAGER_PENDING_Tab_APPEAR}                   xpath=//*[@id="nav-pending-tab"]
${POST_MANAGER_FINISHED_Tab_APPEAR}                  xpath=//*[@id="nav-finished-tab"]
${POST_MANAGER_POST_MANAGER_TEXT_APPEAR}             Post manager
${POST_MANAGER_POST_CARD_APPEAR}                     xpath=//*[@id="nav-all"]/div[1]/div[1]/a/img
${POST_MANAGER_POST_NOT_FOUND_NOT_APPEAR}            No posts found