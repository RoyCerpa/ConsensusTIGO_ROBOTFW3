*** Settings ***
Documentation  Basic LogIN Functionality

Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/PageObjects/LoginPage.robot
Resource  ../Resources/PageObjects/HomePage.robot
Resource  ../Resources/PageObjects/SupportDocumentMaintenancePage.robot
Resource  ../Resources/PageObjects/SupportDocumentMaintenanceCreatePage.robot

Test Setup      CommonFunctionality.Start TestCase
Test Teardown   CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic LOGIN OK and Create NEW Record for the Support Document Maintenance
    [Documentation]  This test case verifies logIN OK and add new Support Document
    [Tags]  Functional

# Robot realiza logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  3s
    Wait until element is visible  ${btn_configuration}
    PRESS KEYS  ${btn_configuration}  [Return]
    sleep  2s

# Usuario ingresa al modulo mantenimiento de soporte
    Wait until element is visible  ${btn_documentsupport}
    PRESS KEYS  ${btn_documentsupport}  [Return]
    sleep  2s
    Wait until element is visible  ${label_pageSupportDocument}
    sleep  2s
    Page should contain  Documentos Soporte

# Usuario ingresa un nuevo registro al mantenimiento
    clicNuevoDocumentoSoporte
    Wait until element is visible  //*[@id='tab-1']/div/div[1]/div[1]/h2
    setNombreDocumento  ROBOT
    setAbreviaturaDocumento  FRAMEWORK
    setDescripcionDocumento  CONSENSUS
    selectionOptionAbono
    setEquivComercial
    setsistemaorigensap  RFW
    sleep  1s
#   Wait until element is visible  "//*[@id='tab-2']/div/div/div/div/div/button"
    sleep  1s
    clicbotonGuardarDocumento
    sleep  1s
#    Wait until element is visible  //*[@id="page-wrapper"]/xdf-breadcrumb/div/div[1]/h2
    Page Should Contain   Mantenimiento de Documentos Soporte
#    existeDocumento  FRAMEWORK



Verify basic LOGIN OK and Update Record for the Support Document Maintenance
    [Documentation]  This test case verifies logIN OK and upd new Support Document
    [Tags]  Functional

# Robot realiza logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  3s
    Wait until element is visible  ${btn_configuration}
    PRESS KEYS  ${btn_configuration}  [Return]
    sleep  2s

# Usuario ingresa al modulo mantenimiento de soporte
    Wait until element is visible  ${btn_documentsupport}
    PRESS KEYS  ${btn_documentsupport}  [Return]
    sleep  2s
    Wait until element is visible  ${label_pageSupportDocument}
    sleep  2s
    Page should contain  Documentos Soporte

# Selecciona registro del mantenimiento a Editar
    clicOpcionFiltro
    setFiltroBasico  ROBOT
    sleep  2s
    click element  //*[@id="mat-option-3"]
    sleep  2s
    clicBuscar
    sleep  2s
    clickbotoneditar
    sleep  2s
    Wait until element is visible  //*[@id="tab-1"]/div/div[1]/div[1]/div
#    Wait until element is visible  //*[@id='tab-1']/div/div[1]/div[1]/h2
    sleep  2s
    Wait until element is visible  //*[@id="mat-input-0"]
    setNombreDocumentoEdit  ROBOTMOD
    setDescripcionDocumentoEdit  CONSENSUSMOD
    selectionOptionCargoEdit
    setEquivComercial
    setsistemaorigensap  RFWMOD
    sleep  1s
#   Wait until element is visible  "//*[@id='tab-2']/div/div/div/div/div/button"
    sleep  1s
    clicbotonGuardarDocumento
    sleep  1s
#    Wait until element is visible  //*[@id="page-wrapper"]/xdf-breadcrumb/div/div[1]/h2
    Page Should Contain   Mantenimiento de Documentos Soporte
#    existeDocumento  FRAMEWORK



Verify basic LOGIN OK and Delete New Record for the Support Document Maintenance
    [Documentation]  This test case verifies logIN OK and del new Support Document
    [Tags]  Functional

# Robot realiza logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  3s
    Wait until element is visible  ${btn_configuration}
    PRESS KEYS  ${btn_configuration}  [Return]
    sleep  2s

# Usuario ingresa al modulo mantenimiento de soporte
    Wait until element is visible  ${btn_documentsupport}
    PRESS KEYS  ${btn_documentsupport}  [Return]
    sleep  2s
    Wait until element is visible  ${label_pageSupportDocument}
    sleep  2s
    Page should contain  Documentos Soporte

# Selecciona registro del mantenimiento a Eliminar
    clicOpcionFiltro
    setFiltroBasico  ROBOTMOD
    sleep  2s
    click element  //*[@id="mat-option-3"]
    sleep  2s
    clicBuscar
    sleep  2s
    clickbotoneliminar
    clickeliminacionconfirmada
    Page should contain  Documentos Soporte




#RUN COMMAND TEST_SCRIPT
#robot -d Results TestsCases/MMDocumentSupportTest.robot



*** Keywords ***

#   Metodos Y/o Keyword Fallidos (Por corregir)

#    IF  ${AssertError} == TRUE
#    Log  ${AssertError}  La prueba Paso Correctamente

#   ELSE
#    Log  ${AssertError}  La prueba Fallo



