*** Settings ***
Documentation  Basic LogIN Functionality

Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/PageObjects/LoginPage.robot
Resource  ../Resources/PageObjects/HomePage.robot
Resource  ../Resources/PageObjects/GeneralParametersPage.robot

Test Setup      CommonFunctionality.Start TestCase
Test Teardown   CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic LOGIN OK and CONFIGURE General Parameters
    [Documentation]  This test case verifies logIN OK and configure General Parameters
    [Tags]  Functional

# Logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  2s
    Wait until element is visible  ${btn_configuration}
    PRESS KEYS  ${btn_configuration}  [Return]
    sleep  2s

# Ingreso al módulo Ajustes Generales
    Wait until element is visible  ${btn_ParamGeneral}
    PRESS KEYS  ${btn_ParamGeneral}  [Return]
    sleep  2s
    Wait until element is visible  ${label_pageParamGeneral}
    sleep  2s
    wait until element is visible  //*[@id="tab-1"]/div/div[1]/div/h2

# Configurar Formato Numérico
  selectionFormatNum
  sleep  2s
  selectionFormatNum1
  sleep  2s
  Click button Save Format Num
  sleep  2s
  Click button Confirmar Format Num
  sleep  2s

# Configurar Otas opciones
  LinkOtrasOpciones
  wait until element is visible  //*[@id="tab-2"]/div/div[1]/div[1]/h2
  selectionFormatNumNeg
  sleep  2s
  selectionFormatNumNeg2
  sleep  2s
  selectCheck
  sleep  2s
  Click button Save Format Num Neg
  sleep  2s
  Click button Confirmar Format Num Neg
  sleep  2s

# Configurar Formato de Fecha
  LinkFormatFecha
  wait until element is visible  //*[@id="tab-3"]/div/div[1]/div[1]/h2
  selectionFormatFecha
  sleep  2s
  selectionFormatFecha1
  sleep  2s
  Click button Save Format fecha
  sleep  2s
  Click button Confirmar Format fecha
  sleep  2s

# Configurar Configuración contable
  LinkConfigContable
  wait until element is visible  //*[@id="tab-4"]/div/div[1]/div[1]/h2
  setMinCtaCont  8
  sleep  2s
  setMaxCtaCont  15
  sleep  2s
  SelectCheck1
  sleep  2s
  SelectCheck2
  sleep  2s
  Click button Save Config Contab
  sleep  2s
  Click button Confirmar Config Contab
  sleep  2s

# Configurar Entidad recaudadora
  LinkEntidRecaud
  wait until element is visible  //*[@id="tab-5"]/div/div[1]/div[1]/h2
  setCantidadMaxDiasLatencia  30
  sleep  2s
  Click button Save Entid Recaud
  sleep  2s
  Click button Confirmar Entid Recaud
  sleep  2s


Verify basic LOGIN OK and REVERTIR General Parameters
    [Documentation]  This test case verifies logIN OK and revertir General Parameters
    [Tags]  Functional

# Logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  2s
    Wait until element is visible  ${btn_configuration}
    PRESS KEYS  ${btn_configuration}  [Return]
    sleep  2s

# Ingreso al módulo Ajustes Generales
    Wait until element is visible  ${btn_ParamGeneral}
    PRESS KEYS  ${btn_ParamGeneral}  [Return]
    sleep  2s
    Wait until element is visible  ${label_pageParamGeneral}
    sleep  2s
    wait until element is visible  //*[@id="tab-1"]/div/div[1]/div/h2

# Configurar Formato Numérico
  selectionFormatNum
  sleep  2s
  selectionFormatNum2
  sleep  2s
  Click button Save Format Num
  sleep  2s
  Click button Confirmar Format Num
  sleep  2s

# Configurar Otas opciones
  LinkOtrasOpciones
  wait until element is visible  //*[@id="tab-2"]/div/div[1]/div[1]/h2
  selectionFormatNumNeg
  sleep  2s
  selectionFormatNumNeg1
  sleep  2s
  selectCheck
  sleep  2s
  Click button Save Format Num Neg
  sleep  2s
  Click button Confirmar Format Num Neg
  sleep  2s

# Configurar Formato de Fecha
  LinkFormatFecha
  wait until element is visible  //*[@id="tab-3"]/div/div[1]/div[1]/h2
  selectionFormatFecha
  sleep  2s
  selectionFormatFecha2
  sleep  2s
  Click button Save Format fecha
  sleep  2s
  Click button Confirmar Format fecha
  sleep  2s

# Configurar Configuración contable
  LinkConfigContable
  wait until element is visible  //*[@id="tab-4"]/div/div[1]/div[1]/h2
  setMinCtaCont  6
  sleep  2s
  setMaxCtaCont  10
  sleep  2s
  SelectCheck1
  sleep  2s
  SelectCheck2
  sleep  2s
  Click button Save Config Contab
  sleep  2s
  Click button Confirmar Config Contab
  sleep  2s

# Configurar Entidad recaudadora
  LinkEntidRecaud
  wait until element is visible  //*[@id="tab-5"]/div/div[1]/div[1]/h2
  setCantidadMaxDiasLatencia  20
  sleep  2s
  Click button Save Entid Recaud
  sleep  2s
  Click button Confirmar Entid Recaud
  sleep  2s