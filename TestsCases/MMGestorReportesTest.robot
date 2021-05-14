*** Settings ***
Documentation  Basic LogIN Functionality

Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/PageObjects/LoginPage.robot
Resource  ../Resources/PageObjects/HomePage.robot
Resource  ../Resources/PageObjects/GestorReportesPage.robot

Test Setup      CommonFunctionality.Start TestCase
Test Teardown   CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic LOGIN OK and GENERAR Reportes - Cuadre y Legalización
    [Documentation]  This test case verifies logIN OK and generar Reportes - Cuadre y Legalización
    [Tags]  Functional

# Logueo correctamente e ingreso Gestor Reportes
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  2s
    Wait until element is visible  ${btn_GestorReport}
    PRESS KEYS  ${btn_GestorReport}  [Return]
    sleep  2s

# Ingreso al Informe de Cuadre y Legalización de Recaudo
    LinkInfoCuadreLegalRecaudo
    wait until element is visible  //*[@id="mat-dialog-0"]/byte-report-popup/div[1]/div/div/span
    # setFechaInicioRecaudo1  01/04/2021
    # setFechaInicioRecaudo2  30/04/2021
    # selectIconCalendar
    # sleep  2s
    # selectYearFechaInicio1
    # sleep  2s
    # selectOneYearFechaInicio1
    # sleep  2s
    # selectOneMounthFechaInicio1
    # sleep  2s
    # selectOneDayFechaInicio1
    # sleep  2s
    # selectIconCalendar2
    # sleep  2s
    # selectYearFechaFin1
    # sleep  2s
    # selectOneYearFechaFin1
    # sleep  2s
    # selectOneMounthFechaFin1
    # sleep  2s
    # selectOneDayFechaFin1
    # sleep  2s
    selectOpcionesLineaNegocio
    selectLineaPospago
    sleep  2s
    Click button Generar Report Cuadre Legaliz
    sleep  2s
    Click button Cerrar Report Cuadre Legaliz


Verify basic LOGIN OK and GENERAR Reportes - Cotejo y Pago
    [Documentation]  This test case verifies logIN OK and generar Reportes - Cotejo y Pago
    [Tags]  Functional

# Logueo correctamente e ingreso Gestor Reportes
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  2s
    Wait until element is visible  ${btn_GestorReport}
    PRESS KEYS  ${btn_GestorReport}  [Return]
    sleep  2s

# Ingreso al Informe de Cuadre y Legalización de Recaudo
    LinkInfoCotejoPagoRecaudo
    selectIconCalendar3
    sleep  2s
    selectYearFechaInicio3
    sleep  2s
    selectOneYearFechaInicio3
    sleep  2s
    selectOneMounthFechaInicio3
    sleep  2s
    selectOneDayFechaInicio3
    sleep  2s
    selectIconCalendar4
    sleep  2s
    selectYearFechaFin4
    sleep  2s
    selectOneYearFechaFin4
    sleep  2s
    selectOneMounthFechaFin4
    sleep  2s
    selectOneDayFechaFin4
    sleep  2s
    selectOpcionesLineaNegocio2
    selectLineaPrepago
    sleep  2s
    Click button Generar Report Cotejo
    sleep  2s
    Click button Cerrar Report Cotejo