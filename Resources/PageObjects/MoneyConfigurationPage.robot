*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElementsBK.py

*** Variables ***
# -----> pendiente de implemtacion ${AssertError}  Set variable  FALSE

*** Keywords ***
clickSeccionMoneda
    click button  ${SCM_secMoneda}
    sleep  2s

clickSeccionLineaNegocio
    click button  ${SCL_secLineaNegocio}
    sleep  2s

ClickChangeEqComercialM1
    click button  ${SCM_btnEqComercial}
    sleep  2s

ClickAcceptChanges
    click button  ${SCM_btnAccept}
    sleep  2s

ClickConfirmChanges
    click button  ${SCM_btnConfirmChange}
    sleep  2s

ClickbotonGuardarChange
    click button  ${SCM_btnGuardar}
    sleep  2s