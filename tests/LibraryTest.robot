*** Settings ***
Documentation       Simple example using SeleniumLibrary.

Library             SeleniumLibrary
Library             Hello

Suite Setup         Setup
Suite Teardown      Close All Browsers

*** Test Cases ***
Scenario One Using Hello Library
    Given There are two people in the conversation
    When Person1 says ${Greeting} to Person2
    Then Preson1 Snd Person2 Are Happy

Scenario Two Using Built-In and Custome Libraries
    Open Browser    ${Url}      browser=firefox
    Input Text      id=lst-ib       Big Cats
    Click Button    css:input[value='Google Search']
    Close Browser

New thing
    Open Browser    ${Url}      browser=firefox
    Input Text      id=lst-ib       Motorcycles
    Click Button    css:input[value='Google Search']
    Close Browser

*** Variables ***
${Greeting}   Hello
${Response}   Hello to you
${Url}        http://www.google.com

*** Keywords ***
Setup
    Set Selenium Implicit Wait  30 seconds