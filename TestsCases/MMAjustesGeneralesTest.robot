*** Settings ***
Documentation  Basic LogIN Functionality

Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/PageObjects/LoginPage.robot
Resource  ../Resources/PageObjects/HomePage.robot
Resource  ../Resources/PageObjects/AjustesGeneralesPage.robot

Test Setup      CommonFunctionality.Start TestCase
Test Teardown   CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic LOGIN OK and CONFIGURE Ajustes Generales
    [Documentation]  This test case verifies logIN OK and configure General Ajust
    [Tags]  Functional

# Logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  2s
    Wait until element is visible  ${btn_AjustGeneral}
    PRESS KEYS  ${btn_AjustGeneral}  [Return]
    sleep  2s

# Ingreso al módulo Ajustes Generales
    LinkInfoGeneral
    sleep  2s
    Wait until element is visible  //*[@id="page-wrapper"]/div/xdf-tabs/div[1]/div/div[2]/xdf-form-view/form/div/div/div[1]/xdf-form-header/h3
    sleep  2s

# Edición de Información General
   Click button Edit Info General
   sleep  2s
   setNombreInfoGeneralEdit  Consensus 2.0 - Edición Robot
   setCorreoInfoGeneralEdit  robotframework@bytesw.com
   setDominioInfoGeneralEdit  http://localhostrobot.com/
   sleep  2s
   Click button Save Info General
   sleep  2s

# Edición de Contraseña
   LinkPasswordAjustGeneral
   sleep  2s
   Click button Edit Password
   sleep  2s
   selectionOpcionPass1
   selectionOpcionPass2
   selectionOpcionPass3
   selectionOpcionPass4
   selectionOpcionPass5
   sleep  2s
   Click button Save Password
   sleep  2s


# Edición de Políticas de Usuario
   LinkPolitUserAjustGeneral
   sleep  2s
   Click button Edit Politicas User
   sleep  2s
   setEditOpPolitUser1  3
   setEditOpPolitUser2  5
   setEditOpPolitUser3  98
   setEditOpPolitUser4  97
   setEditOpPolitUser5  96
   sleep  2s
   selectionOpcionPolitUser6
   sleep  2s
   Click button Save Politicas User
   sleep  2s


Verify basic LOGIN OK and REVERTIR Ajustes Generales
    [Documentation]  This test case verifies logIN OK and revertir General Ajust
    [Tags]  Functional

# Logueo correctamente
    LoginPage.Input username and password  admin  baduka1190
    LoginPage.Click on button LogIN
    HomePage.Verify Result Expected for LOG IN Correct
    sleep  2s
    Wait until element is visible  ${btn_AjustGeneral}
    PRESS KEYS  ${btn_AjustGeneral}  [Return]
    sleep  2s

# Ingreso al módulo Ajustes Generales
    LinkInfoGeneral
    sleep  2s
    Wait until element is visible  //*[@id="page-wrapper"]/div/xdf-tabs/div[1]/div/div[2]/xdf-form-view/form/div/div/div[1]/xdf-form-header/h3
    sleep  2s

# Edición de Información General
   Click button Edit Info General
   sleep  2s
   setNombreInfoGeneralEdit  Consensus 2.0
   setCorreoInfoGeneralEdit  consensusTigoUne@bytesw.com
   setDominioInfoGeneralEdit  http://localhost.com/
   sleep  2s
   Click button Save Info General
   sleep  2s

# Edición de Contraseña
   LinkPasswordAjustGeneral
   sleep  2s
   Click button Edit Password
   sleep  2s
   selectionOpcionPass1
   selectionOpcionPass2
   selectionOpcionPass3
   selectionOpcionPass4
   selectionOpcionPass5
   sleep  2s
   Click button Save Password
   sleep  2s


# Edición de Políticas de Usuario
   LinkPolitUserAjustGeneral
   sleep  2s
   Click button Edit Politicas User
   sleep  2s
   setEditOpPolitUser1  4
   setEditOpPolitUser2  10
   setEditOpPolitUser3  99
   setEditOpPolitUser4  99
   setEditOpPolitUser5  99
   sleep  2s
   selectionOpcionPolitUser6
   sleep  2s
   Click button Save Politicas User
   sleep  2s