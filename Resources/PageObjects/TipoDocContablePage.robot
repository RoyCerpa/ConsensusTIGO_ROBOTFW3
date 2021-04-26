*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***


*** Keywords ***
Click button New Tipo Documento Contable
    click button  ${btn_newTipDocContable}
    sleep  2s
    wait until element is visible  //*[@id="page-wrapper"]/div/xdf-crud-detail/div/div/div/div[1]/xdf-form-header/h3

clickFiltrosTipDocContable
    click element  ${FiltroTipDocContable}
    sleep  2s

setFiltrosTipDocContable
    [Arguments]  ${OpFiltroTipDocContable}
    input text  ${FiltroTipDocContable}  ${OpFiltroTipDocContable}
    sleep  2s

clickFiltroCodTipDocContable
    click element  ${FiltroCodTipDocContable}
    sleep  2s

clickFiltroDescTipDocContable
    click element  ${FiltroDescTipDocContable}
    sleep  2s

clickFiltrarTipDocContable
    click button  ${FiltrarTipDocContable}
    sleep  2s

clickEliminarFiltrosTipDocContable
    click button  ${EliminarFiltrosTipDocContable}
    sleep  2s

Click button Edit Tipo Documento Contable
    click button  ${btn_editTipDocContable}
    sleep  2s

Click button Delete Tipo Documento Contable
    click button  ${btn_deleteTipDocContable}
    sleep  2s

Click button Eliminacion Confirmada Tipo Documento Contable
    click button  ${btn_confirmDeleteTipDocContable}
    sleep  2s

    # holacerpa