*** Settings ***
Documentation  Basic LogIN Functionality

Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/PageObjects/LoginPage.robot
Resource  ../Resources/PageObjects/HomePage.robot
Resource  ../Resources/PageObjects/TipoDocContablePage.robot
Resource  ../Resources/PageObjects/TipoDocContablePageCreate.robot

Test Setup      CommonFunctionality.Start TestCase
Test Teardown   CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic LOGIN OK and CREATE NEW Tipo Documento Contable
    [Documentation]  This test case verifies logIN OK and create new Tipo Documento Contable
    [Tags]  Functional

# Logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  2s
    Wait until element is visible  ${btn_configuration}
    PRESS KEYS  ${btn_configuration}  [Return]
    sleep  2s

# Ingreso al mantenimiento Tipo de Documento Contable
    Wait until element is visible  ${btn_TipDocContable}
    PRESS KEYS  ${btn_TipDocContable}  [Return]
    sleep  2s
    Wait until element is visible  ${label_pageTipDocContable}
    sleep  2s
    page should contain  Mantenimiento de Tipo de Documento Contable

# Registro de nuevo Tipo de Documento Contable
   Click button New Tipo Documento Contable
   wait until element is visible  //*[@id="page-wrapper"]/div/xdf-crud-detail/div/div/div/div[2]/xdf-crud-standard-detail/form/div[1]/div/div/div/div[1]/span
   setCodigoTipoDocContable  NewTipoDocContable
   setDescripcionTipoDocContable  Registro de Tipo de Documento Contable by RobotFramework
   sleep  2s

   Click button Save Tipo Documento Contable
   sleep  2s
   Page Should Contain  Mantenimiento de Tipo de Documento Contable


Verify basic LOGIN OK and EDIT Tipo Documento Contable
    [Documentation]  This test case verifies logIN OK and Edit Tipo Documento Contable
    [Tags]  Functional

# Logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  2s
    Wait until element is visible  ${btn_configuration}
    PRESS KEYS  ${btn_configuration}  [Return]
    sleep  2s

# Ingreso al mantenimiento Tipo de Documento Contable
    Wait until element is visible  ${btn_TipDocContable}
    PRESS KEYS  ${btn_TipDocContable}  [Return]
    sleep  2s
    Wait until element is visible  ${label_pageTipDocContable}
    sleep  2s
    page should contain  Mantenimiento de Tipo de Documento Contable

# Búsqueda y Edición de Tipo de Documento Contable
    clickFiltrosTipDocContable
    Wait until element is visible  //*[@id='mat-option-2']
    setFiltrosTipDocContable  NewTipoDocContable
    sleep  2s
    click element  //*[@id='mat-option-2']
    sleep  2s
    clickFiltrarTipDocContable
    sleep  2s

    Click button Edit Tipo Documento Contable
    wait until element is visible  //*[@id="page-wrapper"]/div/xdf-crud-detail/div/div/div/div[2]/xdf-crud-standard-detail/form/div[1]/div/div/div/div[1]/span
    setDescripcionTipoDocContableEdit  Edición de Tipo de Documento Contable by RobotFramework - Prueba QA
    sleep  2s

    Click button Save Tipo Documento Contable
    sleep  2s
    Page Should Contain  Mantenimiento de Tipo de Documento Contable
    clickEliminarFiltrosTipDocContable


Verify basic LOGIN OK and DELETE Tipo Documento Contable
    [Documentation]  This test case verifies logIN OK and Delete Tipo Documento Contable
    [Tags]  Functional

# Logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  2s
    Wait until element is visible  ${btn_configuration}
    PRESS KEYS  ${btn_configuration}  [Return]
    sleep  2s

# Ingreso al mantenimiento Tipo de Documento Contable
    Wait until element is visible  ${btn_TipDocContable}
    PRESS KEYS  ${btn_TipDocContable}  [Return]
    sleep  2s
    Wait until element is visible  ${label_pageTipDocContable}
    sleep  2s
    page should contain  Mantenimiento de Tipo de Documento Contable

# Búsqueda y Eliminación de Tipo de Documento Contable
    clickFiltrosTipDocContable
    Wait until element is visible  //*[@id='mat-option-2']
    setFiltrosTipDocContable  NewTipoDocContable
    sleep  2s
    click element  //*[@id='mat-option-2']
    sleep  2s
    clickFiltrarTipDocContable
    sleep  2s

    Click button Delete Tipo Documento Contable
    Click button Eliminacion Confirmada Tipo Documento Contable
    page should contain  Mantenimiento de Tipo de Documento Contable
    clickEliminarFiltrosTipDocContable


# holacerpa