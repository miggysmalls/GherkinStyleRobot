*** Settings ***
Documentation       Simple example using SeleniumLibrary.

*** Keywords ***
Open ${Url} With ${Browser}
    [Documentation]             Allows for passing in any url with any browser.
    Open Browser    ${Url}      browser=${Browser}


I Enter A ${Search_Parameter} And Click On "Google Search"
    Input Text      id=lst-ib       ${Search_Parameter}
    Click Button    css:input[value='Google Search']

I Expect To See The Title Of The Page To Equql ${Page_Title}
    ${Title}            Get Title
    Should Be Equal     ${Title}        ${Page_Title}
