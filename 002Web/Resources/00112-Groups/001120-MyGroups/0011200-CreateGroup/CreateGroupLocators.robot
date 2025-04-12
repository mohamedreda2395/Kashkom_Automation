*** Settings ***
Resource     ../../../../../002Web/Resources/000-Common/CommonKeyWords.robot

*** Variables ***
${CREATE_GROUP_GROUP_NAME_FIELD}    //input[@class="form-control"]
${CREATE_GROUP_GROUP_DESCRIPTION_FIELD}     id=about-me
${CREATE_GROUP_PUBLIC_PRIVATE_TOGGLE}    //*[@class="custom-control-label"]
${CREATE_GROUP_CREATE_BUTTON}     //*[@class="btn btn-primary btn-lg"]
${CREATE_GROUP-CHOOSE_ASSET}        id=upload