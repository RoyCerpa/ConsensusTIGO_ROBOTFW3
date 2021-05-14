*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***


*** Keywords ***
# Información General
LinkInfoGeneral
   click element  ${linkInfoAjustGeneral}
   wait until element is visible  //*[@id="page-wrapper"]/div/xdf-tabs/div[1]/div/div[2]/xdf-form-view/form/div/div/div[1]/xdf-form-header/h3

Click button Edit Info General
    click button  ${btn_EditInfoGeneral}
    sleep  2s

setNombreInfoGeneralEdit
    [Arguments]  ${nomInfoGeneral}
    input text  ${nombreInfoGeneral}  ${nomInfoGeneral}  clear=true
    sleep  2s

setCorreoInfoGeneralEdit
    [Arguments]  ${mailInfoGeneral}
    input text  ${correoInfoGeneral}  ${mailInfoGeneral}  clear=true
    sleep  2s

setDominioInfoGeneralEdit
    [Arguments]  ${domInfoGeneral}
    input text  ${dominioInfoGeneral}  ${domInfoGeneral}  clear=true
    sleep  2s

Click button Save Info General
    click button  ${btn_SaveInfoGeneral}
    sleep  2s


# Contraseña
LinkPasswordAjustGeneral
   click element  ${linkPassAjustGeneral}
   wait until element is visible  //*[@id="page-wrapper"]/div/xdf-tabs/div[1]/div/div[2]/xdf-form-view/form/div/div/div[1]/xdf-form-header/h3

Click button Edit Password
    click button  ${btn_EditPassword}
    sleep  2s

selectionOpcionPass1
   click element  ${OpcionPass1}

selectionOpcionPass2
   click element  ${OpcionPass2}

selectionOpcionPass3
   click element  ${OpcionPass3}

selectionOpcionPass4
   click element  ${OpcionPass4}

selectionOpcionPass5
   click element  ${OpcionPass5}

Click button Save Password
    click button  ${btn_SavePassword}
    sleep  2s


# Políticas de Usuario
LinkPolitUserAjustGeneral
   click element  ${linkPoliticAjustGeneral}
   wait until element is visible  //*[@id="page-wrapper"]/div/xdf-tabs/div[1]/div/div[2]/xdf-form-view/form/div/div/div[1]/xdf-form-header/h3

Click button Edit Politicas User
    click button  ${btn_EditPolitUser}
    sleep  2s

setEditOpPolitUser1
    [Arguments]  ${EditOpcionPolitUser1}
    input text  ${EditOpPolitUser1}  ${EditOpcionPolitUser1}  clear=true
    sleep  2s

setEditOpPolitUser2
    [Arguments]  ${EditOpcionPolitUser2}
    input text  ${EditOpPolitUser2}  ${EditOpcionPolitUser2}  clear=true
    sleep  2s

setEditOpPolitUser3
    [Arguments]  ${EditOpcionPolitUser3}
    input text  ${EditOpPolitUser3}  ${EditOpcionPolitUser3}  clear=true
    sleep  2s

setEditOpPolitUser4
    [Arguments]  ${EditOpcionPolitUser4}
    input text  ${EditOpPolitUser4}  ${EditOpcionPolitUser4}  clear=true
    sleep  2s

setEditOpPolitUser5
    [Arguments]  ${EditOpcionPolitUser5}
    input text  ${EditOpPolitUser5}  ${EditOpcionPolitUser5}  clear=true
    sleep  2s

selectionOpcionPolitUser6
   click element  ${selectOpPolitUser6}

Click button Save Politicas User
    click button  ${btn_SavePolitUser}
    sleep  2s