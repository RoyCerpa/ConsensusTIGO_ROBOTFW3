*** Settings ***
Documentation  Basic LogIN Functionality
Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/PageObjects/LoginPage.robot
Resource  ../Resources/PageObjects/HomePage.robot

Test Setup      CommonFunctionality.Start TestCase
Test Teardown   CommonFunctionality.Finish TestCase

*** Variables ***


*** Test Cases ***
Verify basic LOGIN OK functionality
    [Documentation]  This test case verifies logIN username ok and password ok
    [Tags]  Functional

    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct


Verify basic LOGIN NOK User Incorrect
    [Documentation]  This test case verifies logIN username Nok and password ok
    [Tags]  Functional

    LoginPage.Input username and password  RoyCerpa  baduka1190
    LoginPage.Click on button LogIN
    LoginPage.Verify Result Expected for USER NAME Incorrect

Verify basic LOGIN NOK Password Incorrect
    [Documentation]  This test case verifies logIN username ok and password Nok
    [Tags]  Functional

    LoginPage.Input username and password  admin  password123
    LoginPage.Click on button LogIN
    LoginPage.Verify Result Expected for PASSWORD Incorrect








#RUN COMAND SCRIPT
#robot -d Results TestsCases/LoginTest.robot

*** Keywords ***





#Resource  ../../Resources/PageObjects/HeaderPage.robot
#Resource  ../../Resources/PageObjects/SearchResultsPage.robot


#    HeaderPage.Input Search Text and Click Search  books
#    SearchResultsPage.Verify Search Results  books


#    HeaderPage.Click on Advanced Search Link

#robot -d Results TestsCases/eBay/Verify_search_funcionality.robot
#robot -d Results -v env:test1 TestsCases/eBay/Verify_search_funcionality.robot




