*** Settings ***
Documentation  Basic Equivalences Functionality

Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/PageObjects/LoginPage.robot
Resource  ../Resources/PageObjects/HomePage.robot
Resource  ../Resources/PageObjects/EquivalencesPage.robot
Resource  ../Resources/PageObjects/EquivalencesCreatePage.robot

Test Setup      CommonFunctionality.Start TestCase
Test Teardown   CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic LOGIN OK and CREATE Equivalences
    [Documentation]  This test case verifies logIN OK and create new Equivalences
    [Tags]  Functional

# Logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  3s
    Wait until element is visible  ${btnconfigurationEq}
    PRESS KEYS  ${btnconfigurationEq}  [Return]
    sleep  2s

# Ingreso al mantenimiento de Equivalencias comerciales
    Wait until element is visible  ${btn_CommercialEq}
    PRESS KEYS  ${btn_CommercialEq}  [Return]
    sleep  2s
    Wait until element is visible  ${labelPageCommercialEq}
    sleep  2s
    Page should contain  Equivalencias Comerciales

# Registro de nueva Equivalenvia Comercial
#   <<Seccion Informacion General>>

    clicnuevocommercial
    Wait until element is visible  //*[@id="tab-6"]/div/div[1]/h2

    selectionConcepto
    Wait until element is visible  ${OptionEq}

    selectionOptionConcepto
    setDescripcion  EqROBOT
    selectionOptionTipo

# Registro de nueva Equivalenvia Comercial
#   <<Seccion Informacion General>>

    Wait until element is visible      ${SeccionVal_Origen}
    clicSeccionValoresOrigen

    selectionOptionVP
    sleep  2s

    click element  //*[@id="mat-tab-content-0-0"]/div/div/div[1]/div[1]/button
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
    sleep  2s

    input text  //*[@id="mat-input-2"]  ROBOTadd
    sleep  2s
    input text  //*[@id="mat-input-3"]  ROBOTaddFW
    sleep  2s

    click element  //*[@id="mat-dialog-1"]/byte-commercial-equivalences-add-value-modal/mat-dialog-actions/button[2]

    clicbotonGuardar
    sleep  3s

    click element  //*[@id="page-wrapper"]/xdf-breadcrumb/div/div[1]/div/div/button
    sleep  2s

    click element  //*[@id="mat-dialog-2"]/xdf-confirmation-dialog/div[2]/button[2]
    sleep  2s

    Wait until element is visible  //*[@id="page-wrapper"]/xdf-breadcrumb/div/div[1]/h2
    Sleep  2s
    Page Should Contain  Mantenimiento de Equivalencias Comerciales

##    existeDocumento  FRAMEWORK

Verify basic LOGIN OK and EDIT Equivalences
    [Documentation]  This test case verifies logIN OK and EDIT Equivalences
    [Tags]  Functional

# Logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  3s
    Wait until element is visible  ${btnconfigurationEq}
    PRESS KEYS  ${btnconfigurationEq}  [Return]
    sleep  2s

# Ingreso al mantenimiento de Equivalencias comerciales
    Wait until element is visible  ${btn_CommercialEq}
    PRESS KEYS  ${btn_CommercialEq}  [Return]
    sleep  2s
    Wait until element is visible  ${labelPageCommercialEq}
    sleep  2s
    Page should contain  Equivalencias Comerciales

# Búsqueda y Edición de Equivalencias Comerciales

#   <<Seccion Informacion General>>
    setFiltroBasico  Subtipo de transaccion
    Wait until element is visible  ${FiltroByDescripcionEq}
    clicFiltroByDescripcion
    clicBuscar
    clickbotoneditar
    Wait until element is visible  //*[@id="tab-6"]/div/div[1]/h2

    setDescripcionMod  EqROBOTFWMOD
#    selectionOptionTipoMod

#   <<Seccion Valores Por Origen>>
    Wait until element is visible  ${SeccionVal_Origen}
    clicSeccionValoresOrigen

    selectionOptionVPMod
    sleep  2s

    click element  //*[@id="mat-tab-content-0-0"]/div/div/div[1]/div[1]/button
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
    sleep  2s

    input text  //*[@id="mat-input-2"]  ROBOTvalue
    sleep  2s
    input text  //*[@id="mat-input-3"]  ROBOTFWvalue
    sleep  2s

    click element  //*[@id="mat-dialog-1"]/byte-commercial-equivalences-add-value-modal/mat-dialog-actions/button[2]

    clicbotonGuardar
    Page Should Contain  Mantenimiento de Equivalencias Comerciales

##    existeDocumento  FRAMEWORK

Verify basic LOGIN OK and REVERT CHANGES Equivalences
    [Documentation]  This test case verifies logIN OK and EDIT Equivalences
    [Tags]  Functional

# Logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  3s
    Wait until element is visible  ${btnconfigurationEq}
    PRESS KEYS  ${btnconfigurationEq}  [Return]
    sleep  2s

# Ingreso al mantenimiento de Equivalencias comerciales
    Wait until element is visible  ${btn_CommercialEq}
    PRESS KEYS  ${btn_CommercialEq}  [Return]
    sleep  2s
    Wait until element is visible  ${labelPageCommercialEq}
    sleep  2s
    Page should contain  Equivalencias Comerciales

# Búsqueda y Edición de Equivalencias Comerciales

#   <<Seccion Informacion General>>
    setFiltroBasico  EqROBOTFWMOD
    Wait until element is visible  ${FiltroByDescripcionEq}
    clicFiltroByDescripcion
    clicBuscar
    clickbotoneditar
    Wait until element is visible  //*[@id="tab-6"]/div/div[1]/h2

    setDescripcionMod  Subtipo de transaccion
#    selectionOptionTipoMod

#   <<Seccion Valores Por Origen>>
    Wait until element is visible      ${SeccionVal_Origen}
    clicSeccionValoresOrigen

    selectionOptionVPRevert
    sleep  2s

    Wait until element is visible  //*[@id="mat-tab-content-0-0"]/div/div/div[2]/div/div/button
    click element  //*[@id="mat-tab-content-0-0"]/div/div/div[2]/div/div/button
#   //*[@id="mat-expansion-panel-header-0"]/span[1]/mat-panel-title/span/button
#    Wait until element is visible  //*[@id="cdk-overlay-0"]/div/div/button
#    click element  //*[@id="cdk-overlay-0"]/div/div/button

    clicbotonGuardar
    Page Should Contain  Mantenimiento de Equivalencias Comerciales


# RUN COMMAND TEST_SCRIPT
# robot -d Results TestsCases/MMReasonforDifferenceMaintenanceTest.robot
