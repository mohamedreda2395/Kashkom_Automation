*** Settings ***
Library     SeleniumLibrary
Resource  ./PostManagerKeywords.robot
Resource  ././001110120PostStatistics/PostStatisticsKeywords.robot


*** Keywords ***

Post Manager Apppear Successfully
    PostManagerKeywords.verify Post Manager Page Loaded Suceesfully

Search For A Particular Post
    PostManagerKeywords.Assert For Post Card Showing
    PostManagerKeywords.Inser Post Title On Search Bar
    PostManagerKeywords.verify That The Searched Post Appear Successfully

Increase A Particular Post Budget
    PostStatisticsKeywords.Verify Popup Of Post Statistics Appear Successfully
    PostStatisticsKeywords.Click On Increase Budget Icon
    PostStatisticsKeywords.Insert Number Of Audiences For Increase Budget
    PostStatisticsKeywords.Click On Increase Budget Button

Delete A Particular Post
        PostStatisticsKeywords.Delete the Post that on the search result







