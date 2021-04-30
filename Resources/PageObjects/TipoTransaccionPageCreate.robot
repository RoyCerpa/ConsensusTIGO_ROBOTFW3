*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***


*** Keywords ***
setNombreTipoTransaccion
    [Arguments]  ${nomTipoTrx}
    input text  ${nombreTipoTrx}  ${nomTipoTrx}
    sleep  2s

setAbrevTipoTransaccion
    [Arguments]  ${abreviaturaTipoTrx}
    input text  ${abrevTipoTrx}  ${abreviaturaTipoTrx}
    sleep  2s

setDescripTipoTransaccion
    [Arguments]  ${descripcionTipoTrx}
    input text  ${descripTipoTrx}  ${descripcionTipoTrx}
    sleep  2s

selectionTipoInsumo
   click element  ${tipoInsumo}

selectionOpSabanaPagos
   click element  ${opSabanaPagos}

selectionOpExtractoBancario
   click element  ${opExtractBanc}

LinkSubtipoTransaccion
   click element  ${linkSubTipoTrx}
   wait until element is visible  //*[@id="tab-2"]/div/div[1]/div[1]/h2

Click button New SubTipo Transaccion
   click button  ${btn_newSubTipoTrx}
   sleep  2s

setNombreSubTipoTransaccion
    [Arguments]  ${nombreSubTipoTrx}
    input text  ${nomSubTipoTrx}  ${nombreSubTipoTrx}
    sleep  2s

setAbrevSubTipoTransaccion
    [Arguments]  ${abreviaturaSubTipoTrx}
    input text  ${abrevSubTipoTrx}  ${abreviaturaSubTipoTrx}
    sleep  2s

selectCheckSubTipoTrx
   click element  ${checkSubTipoTrx}

LinkEquivComercialTipoTrx
   click element  ${linkEquivComerTipoTrx}
   wait until element is visible  //*[@id="tab-3"]/div/div[1]/div[1]/h2

setIMGTipoTrx
    [Arguments]  ${valorIMGTipoTrx}
    input text  ${IMGTipoTrx}  ${valorIMGTipoTrx}
    sleep  2s

setSAPTipoTrx
    [Arguments]  ${valorSAPTipoTrx}
    input text  ${SAPTipoTrx}  ${valorSAPTipoTrx}
    sleep  2s

setIMGSubTipoTrx
    [Arguments]  ${valorIMGSubTipoTrx}
    input text  ${IMGSubTipoTrx}  ${valorIMGSubTipoTrx}
    sleep  2s

setSAPSubTipoTrx
    [Arguments]  ${valorSAPSubTipoTrx}
    input text  ${SAPSubTipoTrx}  ${valorSAPSubTipoTrx}
    sleep  2s

Click button Save Tipo Transaccion
    click button  ${btn_saveTipoTrx}
    sleep  2s

setNombreTipoTransaccionEdit
    [Arguments]  ${nomTipoTrxEdit}
    input text  ${nombreTipoTrxEdit}  ${nomTipoTrxEdit}  clear=true
    sleep  2s

setDescripTipoTransaccionEdit
    [Arguments]  ${descripcionTipoTrxEdit}
    input text  ${descripTipoTrxEdit}  ${descripcionTipoTrxEdit}  clear=true
    sleep  2s

Click button Edit SubTipo Transaccion
    click button  ${btn_editSubTipoTrx}
    sleep  2s

setNombreSubTipoTransaccionEdit
    [Arguments]  ${nombreSubTipoTrxEdit}
    input text  ${nomSubTipoTrxEdit}  ${nombreSubTipoTrxEdit}  clear=true
    sleep  2s

setAbrevSubTipoTransaccionEdit
    [Arguments]  ${abreviaturaSubTipoTrxEdit}
    input text  ${abrevSubTipoTrxEdit}  ${abreviaturaSubTipoTrxEdit}  clear=true
    sleep  2s

setIMGTipoTrxEdit
    [Arguments]  ${valorIMGTipoTrxEdit}
    input text  ${IMGTipoTrxEdit}  ${valorIMGTipoTrxEdit}  clear=true
    sleep  2s

setSAPTipoTrxEdit
    [Arguments]  ${valorSAPTipoTrxEdit}
    input text  ${SAPTipoTrxEdit}  ${valorSAPTipoTrxEdit}  clear=true
    sleep  2s

setIMGSubTipoTrxEdit
    [Arguments]  ${valorIMGSubTipoTrxEdit}
    input text  ${IMGSubTipoTrxEdit}  ${valorIMGSubTipoTrxEdit}  clear=true
    sleep  2s

setSAPSubTipoTrxEdit
    [Arguments]  ${valorSAPSubTipoTrxEdit}
    input text  ${SAPSubTipoTrxEdit}  ${valorSAPSubTipoTrxEdit}  clear=true
    sleep  2s

Click button Edicion Confirmada Tipo Trx
    click button  ${btn_confirmEditTipoTrx}
    sleep  2s