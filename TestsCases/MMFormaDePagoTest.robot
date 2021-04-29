*** Settings ***
Documentation  Basic LogIN Functionality

Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/PageObjects/LoginPage.robot
Resource  ../Resources/PageObjects/HomePage.robot
Resource  ../Resources/PageObjects/FormaDePagoPage.robot
Resource  ../Resources/PageObjects/FormaDePagoPageCreate.robot

Test Setup      CommonFunctionality.Start TestCase
Test Teardown   CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic LOGIN OK and CREATE NEW Forma de Pago
    [Documentation]  This test case verifies logIN OK and create new Forma de Pago
    [Tags]  Functional

# Logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  2s
    Wait until element is visible  ${btn_configuration}
    PRESS KEYS  ${btn_configuration}  [Return]
    sleep  2s

# Ingreso al mantenimiento Forma de Pago
    Wait until element is visible  ${btn_FormaDePago}
    PRESS KEYS  ${btn_FormaDePago}  [Return]
    sleep  2s
    Wait until element is visible  ${label_pageFormaDePago}
    sleep  2s
    page should contain  Mantenimiento de forma de pago

# Registro de nueva Forma de Pago
   Click button New Forma de Pago
   wait until element is visible  //*[@id="tab-1"]/div/byte-general-information-payment-method/div/div[1]/h2
   setAbreviaturaFormaPago  TESTROBOT
   setNombreFormaPago  Forma de Pago Test Robot
   setDescripcionFormaPago  Esto es una prueba de crear nuevo registro
   activarFlagValorConciliable
   sleep  2s

   LinkEquivalComercial
   wait until element is visible  //*[@id="tab-2"]/div/byte-commercial-equivalence-commons/div/div[1]/h2
   setValorIMG  123456789
   sleep  2s

   Click button Save Forma de Pago
   sleep  2s
   Page Should Contain  Mantenimiento de forma de pago



Verify basic LOGIN OK and EDIT Forma de Pago
    [Documentation]  This test case verifies logIN OK and Edit Forma de Pago
    [Tags]  Functional

# Logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  2s
    Wait until element is visible  ${btn_configuration}
    PRESS KEYS  ${btn_configuration}  [Return]
    sleep  2s

# Ingreso al mantenimiento Forma de Pago
    Wait until element is visible  ${btn_FormaDePago}
    PRESS KEYS  ${btn_FormaDePago}  [Return]
    sleep  2s
    Wait until element is visible  ${label_pageFormaDePago}
    sleep  2s
    page should contain  Mantenimiento de forma de pago

# Búsqueda y Edición de Forma de Pago
    clickFiltrosFormaPago
    Wait until element is visible  //*[@id='mat-option-3']
    setFiltrosFormaPago  Forma de Pago Test Robot
    sleep  2s
    click element  //*[@id='mat-option-3']
    sleep  2s
    clickFiltrarFormaPago
    sleep  2s

    Click button Edit Forma de Pago
    wait until element is visible  //*[@id="tab-1"]/div/byte-general-information-payment-method/div/div[1]/h2
    setNombreFormaPagoEdit  Forma de Pago Edición by Test Robot
    setDescripcionFormaPagoEdit  Esto es una prueba de editar un registro
    activarFlagValorConciliable
    sleep  2s

    LinkEquivalComercial
    wait until element is visible  //*[@id="tab-2"]/div/byte-commercial-equivalence-commons/div/div[1]/h2
    setValorIMGEdit  987654321
    sleep  2s

    Click button Save Forma de Pago
    Click button Edicion Confirmada
    sleep  2s
    Page Should Contain  Mantenimiento de forma de pago
    clickEliminarFiltrosFormaPago



Verify basic LOGIN OK and DELETE Forma de Pago
    [Documentation]  This test case verifies logIN OK and Delete Forma de Pago
    [Tags]  Functional

# Logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  2s
    Wait until element is visible  ${btn_configuration}
    PRESS KEYS  ${btn_configuration}  [Return]
    sleep  2s

# Ingreso al mantenimiento Forma de Pago
    Wait until element is visible  ${btn_FormaDePago}
    PRESS KEYS  ${btn_FormaDePago}  [Return]
    sleep  2s
    Wait until element is visible  ${label_pageFormaDePago}
    sleep  2s
    page should contain  Mantenimiento de forma de pago

# Búsqueda y Eliminación de Forma de Pago
    clickFiltrosFormaPago
    Wait until element is visible  //*[@id='mat-option-3']
    setFiltrosFormaPago  Forma de Pago Edición by Test Robot
    sleep  2s
    click element  //*[@id='mat-option-3']
    sleep  2s
    clickFiltrarFormaPago
    sleep  2s

    Click button Delete Forma de Pago
    Click button Eliminacion Confirmada
    page should contain  Mantenimiento de forma de pago
    clickEliminarFiltrosFormaPago



