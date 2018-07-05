*** Settings ***
Documentation       Simple example using SeleniumLibrary.
...                 Workaround library for chrome.
Resource            resources/Google_Resources.robot
Library             SeleniumLibrary
Library             ChromeNavigation

Suite Setup         Setup
Suite Teardown      Close All Browsers

*** Test Cases ***
Go To Google And Search "Big Cats"
    Given Open ${Url} With ${Browser}
    When I Enter A Big Cats And Click On "Google Search"
    Then I Expect To See The Title Of The Page To Equql ${Page_Title1}

Go To Google And Search "Motorcycles"
    Given Open Chrome And Navigate To ${Url}
    When In Chrome I Enter ${Search_Parameter} And Click On "Google Search"
    Then Chrome Title Should Be ${Page_Title2}

*** Variables ***
${Search_Parameter}     Motorcycles
${Page_Title1}          Big Cats - Google Search
${Page_Title2}          Motorcycles - Google Search
${Url}                  http://www.google.com
${Browser}              firefox
${chrome}               Chrome

*** Keywords ***
Setup
    Set Selenium Implicit Wait  30 seconds
#    Set Library Search Order    ChromeNavigation  SeleniumLibrary