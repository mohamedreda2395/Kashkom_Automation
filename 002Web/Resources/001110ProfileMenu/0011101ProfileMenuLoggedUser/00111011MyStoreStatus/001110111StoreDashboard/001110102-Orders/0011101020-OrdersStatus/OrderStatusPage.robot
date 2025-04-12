*** Settings ***
Library     SeleniumLibrary
Resource    ../0011101020-OrdersStatus/OrdersStatusKeywords.robot

*** Keywords ***
Update Order Status To Delivered Status
#      OrdersStatusKeywords.Verify That Order Status Page Is Successfully Appear
      OrdersStatusKeywords.Click on Update Status Button
      OrdersStatusKeywords.Verify That Assign To Delivery Man Status Is Suceesfully Appear
      OrdersStatusKeywords.Click on Submit Button
      OrdersStatusKeywords.Verify That Assign To Delivery Man Status Is Suceesfully Appear
      OrdersStatusKeywords.Click on Update Status Button
      OrdersStatusKeywords.Verify That Out Of Delivery Status Is Suceesfully Appear
      OrdersStatusKeywords.Click on Submit Button
      OrdersStatusKeywords.Verify That Out Of Delivery Status Is Suceesfully Appear
      OrdersStatusKeywords.Click on Update Status Button
      OrdersStatusKeywords.Verify That Delivered Status Is Suceesfully Appear
      OrdersStatusKeywords.Click on Submit Button
      OrdersStatusKeywords.Verify That Delivered Status Is Suceesfully Appear

