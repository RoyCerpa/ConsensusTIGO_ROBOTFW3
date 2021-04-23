*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***


*** Keywords ***
Click button New Forma de Pago
    click button  ${btn_newFormaPago}
    sleep  2s
    wait until element is visible  //*[@id="tab-1"]/div/byte-general-information-payment-method/div/div[1]/h2

clickFiltrosFormaPago
    click element  ${FiltroFormaPago}
    sleep  2s

setFiltrosFormaPago
    [Arguments]  ${OpFiltroFormPago}
    input text  ${FiltroFormaPago}  ${OpFiltroFormPago}
    sleep  2s

clickFiltroIDFormaPago
    click element  ${FiltroIdFormaPago}
    sleep  2s

clickFiltroNombreFormaPago
    click element  ${FiltroNomFormaPago}
    sleep  2s

clickFiltroDescripcionFormaPago
    click element  ${FiltroDescFormaPago}
    sleep  2s

clickFiltrarFormaPago
    click button  ${FiltrarFormaPago}
    sleep  2s

clickEliminarFiltrosFormaPago
    click button  ${EliminarFiltrosFormaPago}
    sleep  2s


Click button Edit Forma de Pago
    click button  ${btn_editFormaPago}
    sleep  2s

Click button Delete Forma de Pago
    click button  ${btn_deleteFormaPago}
    sleep  2s

Click button Eliminacion Confirmada
    click button  ${btn_confirmDeleteFormaPago}
    sleep  2s