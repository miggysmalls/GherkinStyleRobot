*** Settings ***
Documentation

Library             SeleniumLibrary

Suite Setup         Setup
Suite Teardown      Close All Browsers

*** Test Cases ***
Go To Google And Search "Big Cats"
    Open Browser    ${Url}          browser=${Browser1}
    Input Text      ${Field_Id}     ${Search_Parameter1}
    Click Button    ${Google_Search}
    Close Browser

Go To Google And Search "Motorcycles"
    Open Browser    ${Url}          browser=${Browser2}
    Input Text      ${Field_Id}     ${Search_Parameter2}
    Click Button    ${Google_Search}
    Close Browser

*** Variables ***
${Search_Parameter1}    Big Cats
${Search_Parameter2}    Motorcycles
${Page_Title1}          Big Cats - Google Search
${Page_Title2}          Motorcycles - Google Search
${Url}                  http://www.google.com
${Browser1}             firefox
${Browser2}             chrome
${Field_Id}             id=lst-ib
${Google_Search}        css:input[value='Google Search']

*** Keywords ***
Setup
    Set Selenium Implicit Wait  30 seconds