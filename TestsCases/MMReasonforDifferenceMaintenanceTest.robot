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
    Wait until element is visible  ${btn_ReasonDifference}
    PRESS KEYS  ${btn_ReasonDifference}  [Return]
    sleep  2s
    Wait until element is visible  ${labelPageSupportDocument}
    sleep  2s
    Page should contain  Motivo de Diferencia

# Usuario ingresa un nuevo registro al mantenimiento
    clicNuevoMotivoDiferencia
    Wait until element is visible  //*[@id="page-wrapper"]/xdf-breadcrumb/div/div[1]/h2

    setdescripcionmotivo  NEWMOTIVODIF

    selectionCtaContableAsociada
    Sleep  3s
    Wait until element is visible  ${OptionCtaConAsociada}
    selectionOptCtaContableAsociada
#    select from list by index  //*[@id="page-wrapper"]/div/xdf-crud-detail/div/div/div/div[2]/xdf-crud-standard-detail/form/div[1]/div/div/div/div[2]/div[2]/div/div/xdf-select  10
#    select from list by index  xpath://*[@class="ng-tns-c9-18 ng-trigger ng-trigger-transformPanel mat-select-panel mat-primary"]  10
    #//*[@id="cdk-overlay-1"]
    selectionTipoDocContable
    Sleep  2s
    Wait until element is visible  ${OptionTipoDocContable}
#    select from list by index  //*[@id="cdk-overlay-3"]  10

    selectionOptTipoDocContable
#   Wait until element contains
#   Wait until element is visible
    sleep  1s
#   Wait until element is visible  "//*[@id='tab-2']/div/div/div/div/div/button"
    sleep  1s
    clicbotonGuardarMotivo
    sleep  1s
#    Wait until element is visible  //*[@id="page-wrapper"]/xdf-breadcrumb/div/div[1]/h2
    Page Should Contain  Mantenimiento de Motivo de Diferencia

Verify basic LOGIN OK and Create NEW Record for the ReasonForDifference2
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
    Wait until element is visible  ${btn_ReasonDifference}
    PRESS KEYS  ${btn_ReasonDifference}  [Return]
    sleep  2s
    Wait until element is visible  ${labelPageSupportDocument}
    sleep  2s
    Page should contain  Motivo de Diferencia

# Usuario ingresa un nuevo registro al mantenimiento
    clicNuevoMotivoDiferencia
    Wait until element is visible  //*[@id="page-wrapper"]/xdf-breadcrumb/div/div[1]/h2

    setdescripcionmotivo  NEWMOTIVODIF

    selectionCtaContableAsociada
    Sleep  3s
    Wait until element is visible  ${OptionCtaConAsociada}
    selectionOptCtaContableAsociada
#    select from list by index  //*[@id="page-wrapper"]/div/xdf-crud-detail/div/div/div/div[2]/xdf-crud-standard-detail/form/div[1]/div/div/div/div[2]/div[2]/div/div/xdf-select  10
#    select from list by index  xpath://*[@class="ng-tns-c9-18 ng-trigger ng-trigger-transformPanel mat-select-panel mat-primary"]  10
    #//*[@id="cdk-overlay-1"]
    selectionTipoDocContable
    Sleep  2s
    Wait until element is visible  ${OptionTipoDocContable2}
#    select from list by index  //*[@id="cdk-overlay-3"]  10

    selectionOptTipoDocContable2
#   Wait until element contains
#   Wait until element is visible
    sleep  1s
#   Wait until element is visible  "//*[@id='tab-2']/div/div/div/div/div/button"
    sleep  1s
    clicbotonGuardarMotivo
    sleep  1s
#    Wait until element is visible  //*[@id="page-wrapper"]/xdf-breadcrumb/div/div[1]/h2
    Page Should Contain  Mantenimiento de Motivo de Diferencia

#    existeDocumento  FRAMEWORK

Verify basic LOGIN OK and Update Record for the ReasonForDifference
    [Documentation]  This test case verifies logIN OK and UDP Update ReasonForDifference
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
    Wait until element is visible  ${btn_ReasonDifference}
    PRESS KEYS  ${btn_ReasonDifference}  [Return]
    sleep  2s
    Wait until element is visible  ${labelPageSupportDocument}
    sleep  2s
    Page should contain  Motivo de Diferencia

# Selecciona registro del mantenimiento a Editar
    clicOpcionFiltro
    setFiltroBasico  NEWMOTIVODIF
    sleep  2s
    click element  //*[@id="mat-option-3"]
    clicBuscar

    clickbotoneditar
    Wait until element is visible  //*[@id="page-wrapper"]/div/xdf-crud-detail/div/div/div/div[2]/xdf-crud-standard-detail/form/div[1]/div/div/div/div[1]/span

    setDescripcionMotivoMOD  NEWMOTIVODIFMOD

    selectionCtaContableAsociadaMOD
    Sleep  2s
    Wait until element is visible  ${OptionCtaConAsociadamod}
    selectionOptCtaContableAsociadaMOD

    selectionTipoDocContableMOD
    Sleep  2s
    Wait until element is visible  ${OptionTipoDocContablemod}
    selectionOptTipoDocContableMOD
    sleep  1s
#   Wait until element is visible  "//*[@id='tab-2']/div/div/div/div/div/button"
    sleep  1s
    clicbotonGuardarMotivo
    sleep  1s
#    Wait until element is visible  //*[@id="page-wrapper"]/xdf-breadcrumb/div/div[1]/h2
    Page Should Contain   Mantenimiento de Motivo de Diferencia

#    existeDocumento  FRAMEWORK

Verify basic LOGIN OK and Update Record for the ReasonForDifference2
    [Documentation]  This test case verifies logIN OK and UDP Update ReasonForDifference
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
    Wait until element is visible  ${btn_ReasonDifference}
    PRESS KEYS  ${btn_ReasonDifference}  [Return]
    sleep  2s
    Wait until element is visible  ${labelPageSupportDocument}
    sleep  2s
    Page should contain  Motivo de Diferencia

# Selecciona registro del mantenimiento a Editar
    clicOpcionFiltro
    setFiltroBasico  NEWMOTIVODIF
    sleep  2s
    click element  //*[@id="mat-option-3"]
    clicBuscar

    clickbotoneditar
    Wait until element is visible  //*[@id="page-wrapper"]/div/xdf-crud-detail/div/div/div/div[2]/xdf-crud-standard-detail/form/div[1]/div/div/div/div[1]/span

    setDescripcionMotivoMOD  NEWMOTIVODIFMOD

    selectionCtaContableAsociadaMOD
        Sleep  2s
    Wait until element is visible  ${OptionCtaConAsociadamod}
    selectionOptCtaContableAsociadaMOD

    selectionTipoDocContableMOD
        Sleep  2s
    Wait until element is visible  ${OptionTipoDocContablemod2}
    selectionOptTipoDocContableMOD2
    sleep  1s
#   Wait until element is visible  "//*[@id='tab-2']/div/div/div/div/div/button"
    sleep  1s
    clicbotonGuardarMotivo
    sleep  1s
#    Wait until element is visible  //*[@id="page-wrapper"]/xdf-breadcrumb/div/div[1]/h2
    Page Should Contain   Mantenimiento de Motivo de Diferencia

#    existeDocumento  FRAMEWORK


Verify basic LOGIN OK and Delete New Record for the ReasonForDifference
    [Documentation]  This test case verifies logIN OK and DEL new ReasonForDifference
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
    Wait until element is visible  ${btn_ReasonDifference}
    PRESS KEYS  ${btn_ReasonDifference}  [Return]
    sleep  2s
    Wait until element is visible  ${labelPageSupportDocument}
    sleep  2s
    Page should contain  Motivo de Diferencia

# Selecciona registro del mantenimiento a Eliminar
    clicOpcionFiltro
    setFiltroBasico  NEWMOTIVODIFMOD

    sleep  2s
    click element  //*[@id="mat-option-3"]
    sleep  2s
    clicBuscar
    sleep  2s
    clickbotoneliminar
    clickeliminacionconfirmada
    Page should contain  Mantenimiento de Motivo de Diferencia

##
###RUN COMMAND TEST_SCRIPT
###robot -d Results TestsCases/MMReasonforDifferenceMaintenanceTest.robot
##
##
##
##*** Keywords ***
##
###   Metodos Y/o Keyword Fallidos (Por corregir)
##
###    IF  ${AssertError} == TRUE
###    Log  ${AssertError}  La prueba Paso Correctamente
##
###   ELSE
###    Log  ${AssertError}  La prueba Fallo
##
##
##
