*** Settings ***
Library   SeleniumLibrary  timeout=10s
#Resource  ../TestData/ConfigData.robot

*** Variables ***
${url}  http://192.168.27.90:1102/latest/
${browser}  chrome

*** Keywords ***
Start TestCase
    Open Browser  ${url}  ${browser}
    Maximize browser window
    Sleep  2s

Finish TestCase
    close browser

#robot -d Results -v env:test1 Tests/eBay/Verify_search_funcionality.robot
#robot -d Results Tests/eBay/Verify_search_funcionality.robot
