*** Settings ***
Documentation  Basic LogIN Invalids Functionality
Library  SeleniumLibrary
Resource  ../Resources/DDTcommon.robot
#Resource  ../Resources/PageObjects/DDTLoginPage.robot
Resource  ../Resources/PageObjects/HomePage.robot
Variables  ../Resources/WebElements.py


Library  DataDriver  ../TestData/TestData.csv

Test Setup      DDTcommon.Start TestCase
Test Teardown   DDTcommon.Finish TestCase
Test Template  Invalid Login Scenarios

*** Variables ***


*** Test Cases ***
Verify Login Fails with Invalid Creds ${username} ${password} ${error_msg}
    [Documentation]  This test case verifies CREDENTIALS
    [Tags]  Functional

#Verify basic LOG IN OK functionality
#    HomePage.Verify Result Expected for LOG IN Correct


#RUN COMAND SCRIPT
#robot -d Results TestsCases/LoginTest.robot

*** Keywords ***
Invalid Login Scenarios
    [Arguments]  ${username}  ${password}  ${error_msg}
    Input Text   ${txtbox_username}  ${username}
    Input Password  ${txtbox_password}  ${password}
    PressKeys  ${btn_login}  [Return]
    sleep  2s
    Page Should Contain  ${error_msg}
    sleep  2s


#robot -d Results TestsCases/DDTLoginTest.robot



#Resource  ../../Resources/PageObjects/HeaderPage.robot
#Resource  ../../Resources/PageObjects/SearchResultsPage.robot


#    HeaderPage.Input Search Text and Click Search  books
#    SearchResultsPage.Verify Search Results  books


#    HeaderPage.Click on Advanced Search Link

#robot -d Results TestsCases/eBay/Verify_search_funcionality.robot
#robot -d Results -v env:test1 TestsCases/eBay/Verify_search_funcionality.robot




##Variables  ../WebElements.py