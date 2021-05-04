*** Settings ***
Documentation  Basic ReasonForDifference Functionality

Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/PageObjects/LoginPage.robot
Resource  ../Resources/PageObjects/HomePage.robot
Resource  ../Resources/PageObjects/ReasonforDifferenceMaintenancePage.robot
Resource  ../Resources/PageObjects/ReasonforDifferenceMaintenanceCreatePage.robot

Test Setup      CommonFunctionality.Start TestCase
Test Teardown   CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic LOGIN OK and Create NEW Record for the ReasonForDifference
    [Documentation]  This test case verifies logIN OK and add NEW ReasonForDifference
    [Tags]  Functional

# Robot realiza logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  3s
    Wait until element is visible  ${btnconfiguration}
    PRESS KEYS  ${btnconfiguration}  [Return]
    sleep  2s

# Usuario ingresa al modulo mantenimiento de motivo de diferencia
    Wait until element is visible  ${labelPageSupportDocument}
    PRESS KEYS  ${btn_ReasonDifference}  [Return]
    sleep  2s
    Wait until element is visible  ${labelPageSupportDocument}
    sleep  2s
    Page should contain  Motivo de Diferencia

# Usuario ingresa un nuevo registro al mantenimiento
    clicNuevoMotivoDiferencia
    Wait until element is visible  //*[@id="page-wrapper"]/xdf-breadcrumb/div/div[1]/h2
    setdescripcionmotivo  NEWMOTIVODIFF
    selectionCtaContableAsociaca
    selectionTipoDocContable
    selectionOptTipoDocContable
    sel
    sleep  1s
#   Wait until element is visible  "//*[@id='tab-2']/div/div/div/div/div/button"
    sleep  1s
    clicbotonGuardarMotivo
    sleep  1s
#    Wait until element is visible  //*[@id="page-wrapper"]/xdf-breadcrumb/div/div[1]/h2
    Page Should Contain  Mantenimiento de Motivo de Diferencia

#    existeDocumento  FRAMEWORK







#RUN COMMAND TEST_SCRIPT
#robot -d Results TestsCases/MMReasonforDifferenceMaintenanceTest.robot



*** Keywords ***

#   Metodos Y/o Keyword Fallidos (Por corregir)

#    IF  ${AssertError} == TRUE
#    Log  ${AssertError}  La prueba Paso Correctamente

#   ELSE
#    Log  ${AssertError}  La prueba Fallo



