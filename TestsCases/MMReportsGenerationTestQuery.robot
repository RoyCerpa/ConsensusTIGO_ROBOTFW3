*** Settings ***
Documentation  Basic ReportsGeneration Functionality

Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/PageObjects/LoginPage.robot
Resource  ../Resources/PageObjects/HomePage.robot
Resource  ../Resources/PageObjects/ReportsGenerationPage.robot
Resource  ../Resources/PageObjects/ReportsGenerationCreatePage.robot

Test Setup      CommonFunctionality.Start TestCase
Test Teardown   CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic LOGIN OK and Create NEW ReportsGeneration by qery EXCEL
    [Documentation]  This test case verifies logIN OK and NEW ReportsGeneration by DATE filter
    [Tags]  Functional

# Robot realiza logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  3s
    Wait until element is visible  ${RG_btnGestReportQuery}
    PRESS KEYS  ${RG_btnGestReportQuery}  [Return]
    sleep  2s

# Usuario ingresa al modulo mantenimiento de Configuracion Moneda
    Wait until element is visible  ${RG_btnGestReportQueryIU}
    PRESS KEYS  ${RG_btnGestReportQueryIU}  [Return]
    sleep  2s
    Wait until element is visible  ${SC_lblEncabezado}
    sleep  2s
    Page should contain  Inactividad de usuarios

# Usuario ingresa un nuevo cambio registro a la conf de moneda

    input text  //*[@id="mat-input-0"]  1
    sleep  2s
    click element  //*[@id="page-wrapper"]/div/byte-user-inactivity-report/div/div/div/div[2]/div[1]/div/button
    sleep  2s
    wait until element is visible  //*[@id="page-wrapper"]/div/byte-user-inactivity-report/div/div/div/div[2]/div[2]/div/byte-custom-data-table/div/div[2]/button[1]
    sleep  2s
    click element  //*[@id="page-wrapper"]/div/byte-user-inactivity-report/div/div/div/div[2]/div[2]/div/byte-custom-data-table/div/div[2]/button[1]
    sleep  2s
    Page should contain  Inactividad de usuarios

Verify basic LOGIN OK and Create NEW ReportsGeneration by qery PDF
    [Documentation]  This test case verifies logIN OK and NEW ReportsGeneration by DATE filter
    [Tags]  Functional

# Robot realiza logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  3s
    Wait until element is visible  ${RG_btnGestReportQuery}
    PRESS KEYS  ${RG_btnGestReportQuery}  [Return]
    sleep  2s

# Usuario ingresa al modulo mantenimiento de Configuracion Moneda
    Wait until element is visible  ${RG_btnGestReportQueryAC}
    PRESS KEYS  ${RG_btnGestReportQueryAC}  [Return]
    sleep  2s
    Wait until element is visible  ${SC_lblEncabezado}
    sleep  2s
    Page should contain  Auditoría de cuentas

# Usuario ingresa un nuevo cambio registro a la conf de moneda

    input text  //*[@id="mat-input-0"]  12345
    sleep  2s
    click element  //*[@id="page-wrapper"]/div/byte-audit-of-account/div/div/div/div[2]/div[1]/div/button
    sleep  2s
    wait until element is visible  //*[@id="page-wrapper"]/div/byte-audit-of-account/div/div/div/div[2]/div[2]/div/byte-custom-data-table/div/div[2]/button[2]
    sleep  2s
    click element  //*[@id="page-wrapper"]/div/byte-audit-of-account/div/div/div/div[2]/div[2]/div/byte-custom-data-table/div/div[2]/button[2]
    sleep  2s
    Page should contain  Auditoría de cuentas