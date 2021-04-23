*** Settings ***
Documentation  Basic LogIN Functionality
Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/PageObjects/LoginPage.robot
Resource  ../Resources/PageObjects/HomePage.robot
Resource  ../Resources/PageObjects/DDTLoginPage.robot
Resource  ../Resources/PageObjects/DocumentSuportMaintenancePage.robot

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
    sleep  3s
    Wait until element is visible  ${btn_configuration}
    PRESS KEYS  ${btn_configuration}  [Return]
    sleep  2s
    Wait until element is visible  ${btn_documentsupport}
    PRESS KEYS  ${btn_documentsupport}  [Return]
    sleep  5s
    Wait until element is visible  ${label_pageSupportDocument}
    sleep  8s
    page should contain  Documentos Soporte
    Click button New


#robot -d Results TestsCases/DDTLoginTestOK.robot




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




