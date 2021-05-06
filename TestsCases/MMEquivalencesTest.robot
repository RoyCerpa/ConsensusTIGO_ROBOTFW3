*** Settings ***
Documentation  Basic ReasonForDifference Functionality

Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/PageObjects/LoginPage.robot
Resource  ../Resources/PageObjects/HomePage.robot
Resource  ../Resources/PageObjects/EquivalencesPage.robot
Resource  ../Resources/PageObjects/EquivalencesCreatePage.robot

Test Setup      CommonFunctionality.Start TestCase
#Test Teardown   CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic LOGIN OK and Create NEW Record for the Equivalences
    [Documentation]  This test case verifies logIN OK and add NEW Equivalences
    [Tags]  Functional

# Robot realiza logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  3s
    Wait until element is visible  ${btnconfigurationEq}
    PRESS KEYS  ${btnconfigurationEq}  [Return]
    sleep  2s

# Usuario ingresa al modulo mantenimiento de Equivalencias comerciales
    Wait until element is visible  ${btn_CommercialEq}
    PRESS KEYS  ${btn_CommercialEq}  [Return]
    sleep  2s
    Wait until element is visible  ${labelPageCommercialEq}
    sleep  2s
    Page should contain  Equivalencias Comerciales

## Usuario ingresa un nuevo registro al mantenimiento
    clicnuevocommercialeq
    Wait until element is visible  //*[@id="tab-6"]/div/div[1]/h2

    selectionConceptoEq
    Sleep  3s
    Wait until element is visible  ${OptionEq}
    selectionOptionConceptoEq

    setDescripcionEq  EqROBOT

    selectionOptionTipoEq
    Sleep  2s

#    Wait until element is visible      ${boton_SeccionVal_Origen}
#    clicSeccionValoresOrigenEq
#    Wait until element is visible  //*[@id="tab-7"]/div/div[1]/h2
    click element  //*[@id="page-wrapper"]/div/byte-commercial-equivalences-detail/div/div/div/div/div/ul/li[2]/a
    selectionOptionVP
    sleep  2s

    click element  //*[@id="mat-tab-content-0-0"]/div/div/div[1]/div[1]/button
    #//*[@id="mat-tab-content-0-0"]/div/div/div[1]/div[1]/button
    sleep  2s
    click element  //*[@id="mat-input-1"]
    sleep  2s
    click element  //*[@id="mat-option-26"]
    sleep  2s
    click element  //*[@id="mat-dialog-0"]/byte-commercial-equivalences-detail-modal/mat-dialog-actions/button[2]
    sleep  2s
    click element  //*[@id="mat-expansion-panel-header-0"]
    sleep  2s
    click button  //*[@id="cdk-accordion-child-0"]/div/div/button
#    click element  //*[@id="mat-input-19"]
    input text  //*[@id="mat-input-2"]  ROBOT
    sleep  2s
#    click element  //*[@id="mat-input-20"]
    input text  //*[@id="mat-input-3"]  ROBOTFW
    sleep  2s
    click element  //*[@id="mat-dialog-1"]/byte-commercial-equivalences-add-value-modal/mat-dialog-actions/button[2]
#                  //*[@id="mat-dialog-6"]/byte-commercial-equivalences-add-value-modal/mat-dialog-actions/button[2]

    clicbotonGuardarEq
    sleep  3s

    click element  //*[@id="page-wrapper"]/xdf-breadcrumb/div/div[1]/div/div/button
    sleep  2s
    click element  //*[@id="mat-dialog-2"]/xdf-confirmation-dialog/div[2]/button[2]
#                  //*[@id="mat-dialog-2"]/xdf-confirmation-dialog/div[2]/button[2]
    Wait until element is visible  //*[@id="page-wrapper"]/xdf-breadcrumb/div/div[1]/h2
    Sleep  2s
    Page Should Contain  Mantenimiento de Equivalencias Comerciales
#
##    existeDocumento  FRAMEWORK
#
##Verify basic LOGIN OK and Update Record for the Equivalences
##    [Documentation]  This test case verifies logIN OK and UDP Update Equivalences
##    [Tags]  Functional
##
### Robot realiza logueo correctamente
##    LoginPage.Input username and password  admin  baduka1190
##    LoginPage.Click on button LogIN
##    HomePage.Verify Result Expected for LOG IN Correct
##    sleep  3s
##    Wait until element is visible  ${btnconfiguration}
##    PRESS KEYS  ${btnconfiguration}  [Return]
##    sleep  2s
##
### Usuario ingresa al modulo mantenimiento de motivo de diferencia
##    Wait until element is visible  ${btn_ReasonDifference}
##    PRESS KEYS  ${btn_ReasonDifference}  [Return]
##    sleep  2s
##    Wait until element is visible  ${labelPageSupportDocument}
##    sleep  2s
##    Page should contain  Motivo de Diferencia
##
### Selecciona registro del mantenimiento a Editar
##    clicOpcionFiltro
##    setFiltroBasico  NEWMOTIVODIF
##    sleep  2s
##    click element  //*[@id="mat-option-3"]
##    clicBuscar
##
##    clickbotoneditar
##    Wait until element is visible  //*[@id="page-wrapper"]/div/xdf-crud-detail/div/div/div/div[2]/xdf-crud-standard-detail/form/div[1]/div/div/div/div[1]/span
##
##    setDescripcionMotivoMOD  NEWMOTIVODIFMOD
##
##    selectionCtaContableAsociadaMOD
##        Sleep  2s
##    Wait until element is visible  ${OptionCtaConAsociadamod}
##    selectionOptCtaContableAsociadaMOD
##
##    selectionTipoDocContableMOD
##        Sleep  2s
##    Wait until element is visible  ${OptionTipoDocContablemod}
##    selectionOptTipoDocContableMOD
##    sleep  1s
###   Wait until element is visible  "//*[@id='tab-2']/div/div/div/div/div/button"
##    sleep  1s
##    clicbotonGuardarMotivo
##    sleep  1s
###    Wait until element is visible  //*[@id="page-wrapper"]/xdf-breadcrumb/div/div[1]/h2
##    Page Should Contain   Mantenimiento de Motivo de Diferencia
##
###    existeDocumento  FRAMEWORK
##
##Verify basic LOGIN OK and Delete New Record for the Equivalences
##    [Documentation]  This test case verifies logIN OK and DEL new Equivalences
##    [Tags]  Functional
##
### Robot realiza logueo correctamente
##    LoginPage.Input username and password  admin  baduka1190
##    LoginPage.Click on button LogIN
##    HomePage.Verify Result Expected for LOG IN Correct
##    sleep  3s
##    Wait until element is visible  ${btnconfiguration}
##    PRESS KEYS  ${btnconfiguration}  [Return]
##    sleep  2s
##
### Usuario ingresa al modulo mantenimiento de motivo de diferencia
##    Wait until element is visible  ${btn_ReasonDifference}
##    PRESS KEYS  ${btn_ReasonDifference}  [Return]
##    sleep  2s
##    Wait until element is visible  ${labelPageSupportDocument}
##    sleep  2s
##    Page should contain  Motivo de Diferencia
##
### Selecciona registro del mantenimiento a Eliminar
##    clicOpcionFiltro
##    setFiltroBasico  NEWMOTIVODIFMOD
##
##    sleep  2s
##    click element  //*[@id="mat-option-3"]
##    sleep  2s
##    clicBuscar
##    sleep  2s
##    clickbotoneliminar
##    clickeliminacionconfirmada
##    Page should contain  Mantenimiento de Motivo de Diferencia
###
###
###
###
###
###
###
###
####RUN COMMAND TEST_SCRIPT
####robot -d Results TestsCases/MMReasonforDifferenceMaintenanceTest.robot
###
###
###
###*** Keywords ***
###
####   Metodos Y/o Keyword Fallidos (Por corregir)
###
####    IF  ${AssertError} == TRUE
####    Log  ${AssertError}  La prueba Paso Correctamente
###
####   ELSE
####    Log  ${AssertError}  La prueba Fallo
###
###
###
