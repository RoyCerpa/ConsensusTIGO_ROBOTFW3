*** Settings ***
Documentation  Basic ReportsGeneration Functionality

Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/PageObjects/LoginPage.robot
Resource  ../Resources/PageObjects/HomePage.robot
Resource  ../Resources/PageObjects/ReportsGenerationPage.robot
Resource  ../Resources/PageObjects/ReportsGenerationCreatePage.robot

Test Setup      CommonFunctionality.Start TestCase
#Test Teardown   CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic LOGIN OK and Create NEW ReportsGeneration by DATE
    [Documentation]  This test case verifies logIN OK and NEW ReportsGeneration by DATE filter
    [Tags]  Functional

# Robot realiza logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  3s
    Wait until element is visible  ${RG_btnGestReport}
    PRESS KEYS  ${RG_btnGestReport}  [Return]
    sleep  2s

# Usuario ingresa al modulo mantenimiento de Configuracion Moneda
    Wait until element is visible  ${RG_secRConsolidado}
    PRESS KEYS  ${RG_secRConsolidado}  [Return]
    sleep  2s
    Wait until element is visible  ${SC_lblEncabezado}
    sleep  2s
    Page should contain  Gestor de Reportes

# Usuario ingresa un nuevo cambio registro a la conf de moneda
#    clickSeccionLineaNegocio(Default)
    selectionFilterByDateIni
    selectionFilterByDateFin
    clickGenerationReport
    clickCloseReport
    Page should contain  Gestor de Reportes

Verify basic LOGIN OK and Create NEW ReportsGeneration by LineaNegocio
    [Documentation]  This test case verifies logIN OK and NEW ReportsGeneration by DATE filter
    [Tags]  Functional

# Robot realiza logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  3s
    Wait until element is visible  ${RG_btnGestReport}
    PRESS KEYS  ${RG_btnGestReport}  [Return]
    sleep  2s

# Usuario ingresa al modulo mantenimiento de Configuracion Moneda
    Wait until element is visible  ${RG_secRConsolidado}
    PRESS KEYS  ${RG_secRConsolidado}  [Return]
    sleep  2s
    Wait until element is visible  ${SC_lblEncabezado}
    sleep  2s
    Page should contain  Gestor de Reportes

# Usuario ingresa un nuevo cambio registro a la conf de moneda
#    clickSeccionLineaNegocio(Default)
    selectionLineaNegocio
    selectionOptLineaNegocio
    clickGenerationReport
    clickCloseReport
    Page should contain  Gestor de Reportes


Verify basic LOGIN OK and Create NEW ReportsGeneration by Month
    [Documentation]  This test case verifies logIN OK and NEW ReportsGeneration by DATE filter
    [Tags]  Functional

# Robot realiza logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  3s
    Wait until element is visible  ${RG_btnGestReport}
    PRESS KEYS  ${RG_btnGestReport}  [Return]
    sleep  2s

# Usuario ingresa al modulo mantenimiento de Configuracion Moneda
    Wait until element is visible  ${RG_secRInfConciliation}
    PRESS KEYS  ${RG_secRInfConciliation}  [Return]
    sleep  2s
    Wait until element is visible  ${SC_lblEncabezado}
    sleep  2s
    Page should contain  Gestor de Reportes

# Usuario ingresa un nuevo cambio registro a la conf de moneda
#    clickSeccionLineaNegocio(Default)
    selectionMonthIC
    selectionOptMonthIC
    selectionYearIC
    selectionOptYearIC
    clickGenerationReport
    clickCloseReport
    Page should contain  Gestor de Reportes

Verify basic LOGIN OK and Create NEW ReportsGeneration by Month Contingencia
    [Documentation]  This test case verifies logIN OK and NEW ReportsGeneration by DATE filter
    [Tags]  Functional

# Robot realiza logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  3s
    Wait until element is visible  ${RG_btnGestReport}
    PRESS KEYS  ${RG_btnGestReport}  [Return]
    sleep  2s

# Usuario ingresa al modulo mantenimiento de Configuracion Moneda
    Wait until element is visible  ${RG_secRInfConciliation}
    PRESS KEYS  ${RG_secRInfConciliation}  [Return]
    sleep  2s
    Wait until element is visible  ${SC_lblEncabezado}
    sleep  2s
    Page should contain  Gestor de Reportes

# Usuario ingresa un nuevo cambio registro a la conf de moneda
#    clickSeccionLineaNegocio(Default)
    selectionMonthIC2
    selectionOptMonthIC2
    selectionYearIC2
    selectionOptYearIC2
    clickGenerationReport
    clickCloseReport
    Page should contain  Gestor de Reportes

Verify basic LOGIN OK and Create NEW ReportsGeneration by Month Contingencia2
    [Documentation]  This test case verifies logIN OK and NEW ReportsGeneration by DATE filter
    [Tags]  Functional

# Robot realiza logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  3s
    Wait until element is visible  ${RG_btnGestReport}
    PRESS KEYS  ${RG_btnGestReport}  [Return]
    sleep  2s

# Usuario ingresa al modulo mantenimiento de Configuracion Moneda
    Wait until element is visible  ${RG_secRInfConciliation}
    PRESS KEYS  ${RG_secRInfConciliation}  [Return]
    sleep  2s
    Wait until element is visible  ${SC_lblEncabezado}
    sleep  2s
    Page should contain  Gestor de Reportes

# Usuario ingresa un nuevo cambio registro a la conf de moneda
#    clickSeccionLineaNegocio(Default)
    selectionMonthIC2
    selectionOptMonthIC2
    selectionYearIC2
    selectionOptYearIC3
    clickGenerationReport
    clickCloseReport
    Page should contain  Gestor de Reportes

