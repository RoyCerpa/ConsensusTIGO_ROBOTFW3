*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***


*** Keywords ***
setAbreviaturaFormaPago
    [Arguments]  ${abrevFormaPago}
    input text  ${abreviaturaFormaPago}  ${abrevFormaPago}
    sleep  2s

setNombreFormaPago
    [Arguments]  ${nomFormaPago}
    input text  ${nombreFormaPago}  ${nomFormaPago}
    sleep  2s

setDescripcionFormaPago
    [Arguments]  ${descFormaPago}
    input text  ${descripcionFormaPago}  ${descFormaPago}
    sleep  2s

activarFlagValorConciliable
   click element  ${flagValorConciliableFormaPago}

LinkEquivalComercial
   click element  ${linkEquivComercFormaPago}
   wait until element is visible  //*[@id="tab-2"]/div/byte-commercial-equivalence-commons/div/div[1]/h2

setValorIMG
    [Arguments]  ${valorIMG}
    input text  ${valueIMGFormaPago}  ${valorIMG}
    sleep  2s

Click button Save Forma de Pago
    click button  ${btn_saveFormaPago}
    sleep  2s
    wait until element is visible  //*[@id="page-wrapper"]/xdf-breadcrumb/div/div[1]/h2


setNombreFormaPagoEdit
    [Arguments]  ${nomEditFormaPago}
    input text  ${nombreEditFormaPago}  ${nomEditFormaPago}  clear=true
    sleep  2s

setDescripcionFormaPagoEdit
    [Arguments]  ${descEditFormaPago}
    input text  ${descripcionEditFormaPago}  ${descEditFormaPago}  clear=true
    sleep  2s

setValorIMGEdit
    [Arguments]  ${valorIMGEdit}
    input text  ${valueEditIMGFormaPago}  ${valorIMGEdit}  clear=true
    sleep  2s

Click button Edicion Confirmada
    click button  ${btn_confirmEditFormaPago}
    sleep  2s
    wait until element is visible  //*[@id="page-wrapper"]/xdf-breadcrumb/div/div[1]/h2