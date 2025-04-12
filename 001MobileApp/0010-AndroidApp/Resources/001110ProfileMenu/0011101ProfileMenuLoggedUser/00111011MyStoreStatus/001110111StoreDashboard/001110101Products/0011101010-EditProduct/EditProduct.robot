*** Settings ***
Library     SeleniumLibrary
Resource    ../0011101010-EditProduct/EditProductKeywords.robot

*** Keywords ***
Update Product Quantity
    EditProductKeywords.Verify That Edit Product Page is Successfully Loaded
    EditProductKeywords.Clear Quantity field
    EditProductKeywords.Insert Quantity For Product
    EditProductKeywords.Click on Edit Button