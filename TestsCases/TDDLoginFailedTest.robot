*** Settings ***
Documentation  Basic LogIN Invalids Functionality

Library  SeleniumLibrary
Resource  ../Resources/DDTcommon.robot
Resource  ../Resources/PageObjects/HomePage.robot
Resource  ../Resources/PageObjects/DDTLoginPage.robot
Variables  ../Resources/WebElements.py
#Library  DataDriver  ../TestData/TestDataCSV.csv
Library  DataDriver  ../TestData/TestDataXLS.xls  sheet_name=LoginAccessTest


Test Setup      DDTcommon.Start TestCase
Test Teardown   DDTcommon.Finish TestCase
Test Template  Invalid Login Scenarios

*** Variables ***



*** Test Cases ***
Verify Login Fails with Invalid Creds ${username} ${password} ${error_msg}
    [Documentation]  This test case verifies CREDENTIALS
    [Tags]  Functional

*** Keywords ***
Invalid Login Scenarios
    [Arguments]  ${username}  ${password}  ${error_msg}
    setUsernameLogin  ${username}
    setPasswordLogin  ${password}
    clickButtonLogin
    sleep  1s
    Page Should Contain  ${error_msg}



# robot -d Results TestsCases/TDDLoginFailedTest.robot