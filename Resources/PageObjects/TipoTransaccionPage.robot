*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***


*** Keywords ***
Click button New Tipo Transaccion
    click button  ${btn_newTipoTrx}
    sleep  2s
    wait until element is visible  //*[@id="tab-1"]/div/div[1]/div[1]/h2

clickFiltrosTipoTransaccion
    click element  ${filtroTipoTrx}
    sleep  2s

setFiltrosTipoTransaccion
    [Arguments]  ${OpFiltroTipoTrx}
    input text  ${filtroTipoTrx}  ${OpFiltroTipoTrx}
    sleep  2s

clickFiltroCodTipoTransaccion
    click element  ${filtroCodTipoTrx}
    sleep  2s

clickFiltroNomTipoTransaccion
    click element  ${filtroNomTipoTrx}
    sleep  2s

clickFiltroTipInsumTipoTransaccion
    click element  ${filtroTipInsumTipoTrx}
    sleep  2s

clickFiltrarTipoTransaccion
    click button  ${filtrarTipoTrx}
    sleep  2s

clickEliminarFiltrosTipoTransaccion
    click button  ${eliminarFiltrosTipoTrx}
    sleep  2s

Click button Edit Tipo Transaccion
    click button  ${btn_editTipoTrx}
    sleep  2s

Click button Delete Tipo Transaccion
    click button  ${btn_deleteTipoTrx}
    sleep  2s

Click button Eliminacion Confirmada Tipo Transaccion
    click button  ${btn_confirmDeleteTipoTrx}
    sleep  2s

