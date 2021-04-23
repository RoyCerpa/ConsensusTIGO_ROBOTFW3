*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***


*** Keywords ***
Click button New Account
    click button  ${boton_New}
    sleep  2s
    wait until element is visible  //*[@id='tab-1']/div/byte-general-information-accounting-account/div/div[1]/h2

clickFiltrosCuentaContable
    click element  ${filtros}
    sleep  2s

setFiltrosCuentaContable
    [Arguments]  ${ingresarCtaCont}
    input text  ${filtros}  ${ingresarCtaCont}
    sleep  2s

click filtro Id
    click element  ${filtroID}
    sleep  2s

click filtro Numero Cuenta
    click element  ${FiltroNumeroCta}
    sleep  2s

click button Filtrar
    click button  ${boton_Filtrar}
    sleep  2s

ClickEliminarFiltrosCuentaContable
    click button  ${boton_DeleteFiltros}
    sleep  2s


Click button Edit
    click button  ${boton_Edit}
    sleep  2s
    wait until element is visible  //*[@id="tab-1"]/div/byte-general-information-accounting-account/div/div[1]/h2

Click button Delete
    click button  ${boton_Delete}
    sleep  2s

Click button confirmar Delete
    click button  ${boton_ConfirmDelete}
    sleep  2s

