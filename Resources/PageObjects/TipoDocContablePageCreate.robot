*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***


*** Keywords ***
setCodigoTipoDocContable
    [Arguments]  ${codigoTipDocContable}
    input text  ${codTipDocContable}  ${codigoTipDocContable}
    sleep  2s

setDescripcionTipoDocContable
    [Arguments]  ${descripTipDocContable}
    input text  ${descTipDocContable}  ${descripTipDocContable}
    sleep  2s

Click button Save Tipo Documento Contable
    click button  ${btn_saveTipDocContable}
    sleep  2s

setDescripcionTipoDocContableEdit
    [Arguments]  ${descripcionEditTipDocContable}
    input text  ${descEditTipDocContable}  ${descripcionEditTipDocContable}  clear=true
    sleep  2s

    # holacerpa
    # holafrodo