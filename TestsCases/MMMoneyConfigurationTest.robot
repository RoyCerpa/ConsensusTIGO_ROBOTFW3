*** Settings ***
Documentation  Basic MoneyConfigurationSystem Functionality

Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/PageObjects/LoginPage.robot
Resource  ../Resources/PageObjects/HomePage.robot
Resource  ../Resources/PageObjects/MoneyConfigurationPage.robot
Resource  ../Resources/PageObjects/MoneyConfigurationCreatePage.robot

Test Setup      CommonFunctionality.Start TestCase
Test Teardown   CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic LOGIN OK and Create NEW change for the MoneyConfigurationSystem
    [Documentation]  This test case verifies logIN OK and add NEW change MoneyConfigurationSystem
    [Tags]  Functional

# Robot realiza logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  3s
    Wait until element is visible  ${SC_btnSystem}
    PRESS KEYS  ${SC_btnSystem}  [Return]
    sleep  2s

# Usuario ingresa al modulo mantenimiento de Configuracion Moneda
    Wait until element is visible  ${SC_btnConfiguracion}
    PRESS KEYS  ${SC_btnConfiguracion}  [Return]
    sleep  2s
    Wait until element is visible  ${SC_lblEncabezado}
    sleep  2s
    Page should contain  Moneda

# Usuario ingresa un nuevo cambio registro a la conf de moneda
#    clickSeccionLineaNegocio(Default)
    selectionTipoMoneda
    Wait until element is visible  ${SCM_optMonedaPrin}
    selectionOptMoneda

    ClickChangeEqComercialM1
    setEqComercialIMG  USD2
    setEqComercialSAP  USD2
    ClickAcceptChanges
    ClickbotonGuardarChange
    Sleep  2s
    ClickConfirmChanges
    Wait until element is visible  ${SC_lblEncabezado}
    Page Should Contain  Moneda


Verify basic LOGIN OK and REVERT NEW change for the MoneyConfigurationSystem
    [Documentation]  This test case verifies logIN OK and revert NEW change MoneyConfigurationSystem
    [Tags]  Functional

# Robot realiza logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  3s
    Wait until element is visible  ${SC_btnSystem}
    PRESS KEYS  ${SC_btnSystem}  [Return]
    sleep  2s

# Usuario ingresa al modulo mantenimiento de Configuracion Moneda
    Wait until element is visible  ${SC_btnConfiguracion}
    PRESS KEYS  ${SC_btnConfiguracion}  [Return]
    sleep  2s
    Wait until element is visible  ${SC_lblEncabezado}
    sleep  2s
    Page should contain  Moneda

# Usuario ingresa un nuevo cambio registro a la conf de moneda
#    clickSeccionLineaNegocio(Default)
    selectionTipoMoneda
    Wait until element is visible  ${SCM_optMonedaPrin}
    selectionOptMonedaRV

    ClickChangeEqComercialM1
    setEqComercialIMG_RV  COP
    setEqComercialSAP_RV  COP
    ClickAcceptChanges
    ClickbotonGuardarChange
    Sleep  2s
    ClickConfirmChanges
    Wait until element is visible  ${SC_lblEncabezado}
    Page Should Contain  Moneda
# RUN COMMAND TEST_SCRIPT
# robot -d Results TestsCases/MMMoneyConfigurationTest.robot