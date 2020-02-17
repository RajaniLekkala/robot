*** Settings ***
Documentation  This is some basic info about the whole test suite
Resource  ../Resources/keywords.robot
Library  SeleniumLibrary
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  http://www.amazon.com

*** Test Cases ***
User can access amazon.com
    [Documentation]  This is some basic info about the test
    [Tags]  Test1
    Go to Web Page


User can conduct a search
    [Documentation]  This is some basic info about the test
    [Tags]  Test2
    Go to Web Page
    Search for Product   ferrari 458   results for "ferrari 458"


User can conduct another search
    [Documentation]  This is some basic info about the test
    [Tags]   Test3
    Go to Web Page
    Search for Product    tesla model x    results for "tesla model x"

