*** Settings ***
Documentation  Basic LogIN Functionality

Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/PageObjects/LoginPage.robot
Resource  ../Resources/PageObjects/HomePage.robot
Resource  ../Resources/PageObjects/TipoTransaccionPage.robot
Resource  ../Resources/PageObjects/TipoTransaccionPageCreate.robot

Test Setup      CommonFunctionality.Start TestCase
Test Teardown   CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic LOGIN OK and create new Tipo Transaccion
    [Documentation]  This test case verifies logIN OK and create Tipo Transaccion
    [Tags]  Functional

# Logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  2s
    Wait until element is visible  ${btn_configuration}
    PRESS KEYS  ${btn_configuration}  [Return]
    sleep  2s

# Ingreso al mantenimiento Tipo Transacción
    Wait until element is visible  ${btn_TipoTrx}
    PRESS KEYS  ${btn_TipoTrx}  [Return]
    sleep  2s
    Wait until element is visible  ${label_pageTipoTrx}
    sleep  2s
    wait until element is visible  //*[@id="page-wrapper"]/xdf-breadcrumb/div/div[1]/h2

# Registro de nuevo Tipo Transacción
   Click button New Tipo Transaccion
   wait until element is visible  //*[@id="tab-1"]/div/div[1]/div[1]/h2
   setNombreTipoTransaccion  Nombre Tipo de Transacción
   setAbrevTipoTransaccion  ABREVTIPOTRX
   setDescripTipoTransaccion  Descripción Tipo de Transacción
   selectionTipoInsumo
   sleep  2s
   selectionOpSabanaPagos
   sleep  2s

   LinkSubtipoTransaccion
   wait until element is visible  //*[@id="tab-2"]/div/div[1]/div[1]/h2
   Click button New SubTipo Transaccion
   sleep  2s
   setNombreSubTipoTransaccion  1234
   sleep  2s
   setAbrevSubTipoTransaccion  4321
   sleep  2s
   selectCheckSubTipoTrx

   LinkEquivComercialTipoTrx
   wait until element is visible  //*[@id="tab-3"]/div/div[1]/div[1]/h2
   setIMGTipoTrx  123
   sleep  2s
   setSAPTipoTrx  456
   sleep  2s
   setIMGSubTipoTrx  789
   sleep  2s
   setSAPSubTipoTrx  1011
   sleep  2s

   Click button Save Tipo Transaccion
   sleep  2s
   Page Should Contain  Mantenimiento de Tipo de Transacción


Verify basic LOGIN OK and EDIT Tipo Transaccion
    [Documentation]  This test case verifies logIN OK and edit Tipo Transaccion
    [Tags]  Functional

# Logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  2s
    Wait until element is visible  ${btn_configuration}
    PRESS KEYS  ${btn_configuration}  [Return]
    sleep  2s

# Ingreso al mantenimiento Tipo Transacción
    Wait until element is visible  ${btn_TipoTrx}
    PRESS KEYS  ${btn_TipoTrx}  [Return]
    sleep  2s
    Wait until element is visible  ${label_pageTipoTrx}
    sleep  2s
    wait until element is visible  //*[@id="page-wrapper"]/xdf-breadcrumb/div/div[1]/h2

# Búsqueda y Edición de Tipo Transacción
    clickFiltrosTipoTransaccion
    Wait until element is visible  //*[@id='mat-option-2']
    setFiltrosTipoTransaccion  ABREVTIPOTRX
    sleep  2s
    click element  //*[@id='mat-option-2']
    sleep  2s
    clickFiltrarTipoTransaccion
    sleep  2s

    Click button Edit Tipo Transaccion
    wait until element is visible  //*[@id="tab-1"]/div/div[1]/div[1]/h2
    setNombreTipoTransaccionEdit  -Modificado
    setDescripTipoTransaccionEdit  -Modificado
    selectionTipoInsumo
    sleep  2s
    selectionOpExtractoBancario
    sleep  2s

    LinkSubtipoTransaccion
    wait until element is visible  //*[@id="tab-2"]/div/div[1]/div[1]/h2
    Click button Edit SubTipo Transaccion
    sleep  2s
    setNombreSubTipoTransaccionEdit  5678
    setAbrevSubTipoTransaccionEdit  91011
    selectCheckSubTipoTrx
    sleep  2s

    LinkEquivComercialTipoTrx
    wait until element is visible  //*[@id="tab-3"]/div/div[1]/div[1]/h2
    setIMGTipoTrxEdit  1213
    setSAPTipoTrxEdit  1415
    setIMGSubTipoTrxEdit  1617
    setSAPSubTipoTrxEdit  1819

    Click button Save Tipo Transaccion
    sleep  2s
    Click button Edicion Confirmada Tipo Trx
    sleep  2s
    Page Should Contain  Mantenimiento de Tipo de Transacción


Verify basic LOGIN OK and DELETE Tipo Transaccion
    [Documentation]  This test case verifies logIN OK and delete Tipo Transaccion
    [Tags]  Functional

# Logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  2s
    Wait until element is visible  ${btn_configuration}
    PRESS KEYS  ${btn_configuration}  [Return]
    sleep  2s

# Ingreso al mantenimiento Tipo Transacción
    Wait until element is visible  ${btn_TipoTrx}
    PRESS KEYS  ${btn_TipoTrx}  [Return]
    sleep  2s
    Wait until element is visible  ${label_pageTipoTrx}
    sleep  2s
    wait until element is visible  //*[@id="page-wrapper"]/xdf-breadcrumb/div/div[1]/h2

# Búsqueda y Edición de Tipo Transacción
    clickFiltrosTipoTransaccion
    Wait until element is visible  //*[@id='mat-option-2']
    setFiltrosTipoTransaccion  ABREVTIPOTRX
    sleep  2s
    click element  //*[@id='mat-option-2']
    sleep  2s
    clickFiltrarTipoTransaccion
    sleep  2s

    Click button Delete Tipo Transaccion
    Click button Eliminacion Confirmada Tipo Transaccion
    page should contain  Mantenimiento de Tipo de Transacción
    clickEliminarFiltrosTipoTransaccion


