*** Settings ***
Documentation  Basic LogIN Functionality

Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/PageObjects/LoginPage.robot
Resource  ../Resources/PageObjects/HomePage.robot
Resource  ../Resources/PageObjects/AccountingAccountPage.robot
Resource  ../Resources/PageObjects/AccountingAccountPageCreate.robot

Test Setup      CommonFunctionality.Start TestCase
Test Teardown   CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic LOGIN OK and CREATE NEW Cuenta Contable
    [Documentation]  This test case verifies logIN OK and Create new Cuenta Contable
    [Tags]  Functional

# Logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  2s
    Wait until element is visible  ${btn_configuration}
    PRESS KEYS  ${btn_configuration}  [Return]
    sleep  2s

# Ingreso al mantenimiento Cuenta Contable
    Wait until element is visible  ${btn_accountingAccount}
    PRESS KEYS  ${btn_accountingAccount}  [Return]
    sleep  2s
    Wait until element is visible  ${label_pageAccountingAccount}
    sleep  2s
    page should contain  Mantenimiento de Cuenta Contable

# Registro de nueva Cuenta Contable
   Click button New Account
   wait until element is visible  //*[@id="tab-1"]/div/byte-general-information-accounting-account/div/div[1]/h2
   setNumeroCuenta  123456
   setDescripcion  Cuenta Contable Test Robot
   selectionConfiguracionContable
   selectionDeudora
   sleep  2s

   LinkEquivalenciaComercial
   wait until element is visible  //*[@id="tab-2"]/div/byte-commercial-equivalence-commons/div/div[1]/h2
   setSistemaOrigenSAP  123456
   sleep  2s

   LinkValoresComplementarios
   wait until element is visible  //*[@id="tab-3"]/div/byte-complementary-value/div/div[1]/h2
   setValorSAPPos  40
   setValorSAPNeg  50
   sleep  2s

   Click button Save Account Created
   sleep  2s
   Page Should Contain  Mantenimiento de Cuenta Contable



Verify basic LOGIN OK and EDIT Cuenta Contable
    [Documentation]  This test case verifies logIN OK and Edit Cuenta Contable
    [Tags]  Functional

# Logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  2s
    Wait until element is visible  ${btn_configuration}
    PRESS KEYS  ${btn_configuration}  [Return]
    sleep  2s

# Ingreso al mantenimiento Cuenta Contable
    Wait until element is visible  ${btn_accountingAccount}
    PRESS KEYS  ${btn_accountingAccount}  [Return]
    sleep  2s
    Wait until element is visible  ${label_pageAccountingAccount}
    sleep  2s
    page should contain  Mantenimiento de Cuenta Contable

# Búsqueda y Edición de Cuenta Contable
    clickFiltrosCuentaContable
    Wait until element is visible  //*[@id='mat-option-3']
    setFiltrosCuentaContable  123456
    sleep  2s
    click element  //*[@id='mat-option-3']
    sleep  2s
    click button Filtrar
    sleep  2s

    Click button Edit
    wait until element is visible  //*[@id="tab-1"]/div/byte-general-information-accounting-account/div/div[1]/h2
    setDescripcionAccountEdit  Edición de Cuenta Contable by Test Robot
    selectionConfiguracionContable
    selectionAcreedora
    sleep  2s

    LinkEquivalenciaComercial
    wait until element is visible  //*[@id="tab-2"]/div/byte-commercial-equivalence-commons/div/div[1]/h2
    setSistemaOrigenSAPEdit  654321
    sleep  2s

    LinkValoresComplementarios
    wait until element is visible  //*[@id="tab-3"]/div/byte-complementary-value/div/div[1]/h2
    setValorSAPPosEdit  50
    setValorSAPNegEdit  40
    sleep  2s

    Click button Save Account Created
    Click button Confirmar Edit
    sleep  2s
    Page Should Contain  Mantenimiento de Cuenta Contable



Verify basic LOGIN OK and DELETE Cuenta Contable
    [Documentation]  This test case verifies logIN OK and Delete Cuenta Contable
    [Tags]  Functional

# Logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  2s
    Wait until element is visible  ${btn_configuration}
    PRESS KEYS  ${btn_configuration}  [Return]
    sleep  2s

# Ingreso al mantenimiento Cuenta Contable
    Wait until element is visible  ${btn_accountingAccount}
    PRESS KEYS  ${btn_accountingAccount}  [Return]
    sleep  2s
    Wait until element is visible  ${label_pageAccountingAccount}
    sleep  2s
    page should contain  Mantenimiento de Cuenta Contable


# Búsqueda y Eliminación de Cuenta Contable
    clickFiltrosCuentaContable
    Wait until element is visible  //*[@id='mat-option-3']
    setFiltrosCuentaContable  123456
    sleep  2s
    click element  //*[@id='mat-option-3']
    sleep  2s
    click button Filtrar
    sleep  2s

    Click button Delete
    Click button confirmar Delete
    page should contain  Mantenimiento de Cuenta Contable
    ClickEliminarFiltrosCuentaContable