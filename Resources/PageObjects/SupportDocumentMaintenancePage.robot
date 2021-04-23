*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***
${AssertError}  Set variable  FALSE

*** Keywords ***
clicNuevoDocumentoSoporte
    click button  ${botonNuevo}
    sleep  2s

clicSeccionEquivComercial
    click button  ${SeccionEquivComercial}
    sleep  2s

clicbotonGuardarDocumento
    click button  ${botonGuardarv2}
    sleep  2s

clicOpcionFiltro
    click button  ${OpcionFiltro}
    sleep  2s

clicFiltroByCode
    click button  ${FiltroByCodigo}
    sleep  2s

clicFiltroByNombre
    click button  ${FiltroByNombre}
    sleep  2s

clicBuscar
    click button  ${OpcionBuscar}
    sleep  2s

setFiltroBasico
    [Arguments]  ${OpFiltro}
    input text  ${OpcionFiltro}  ${OpFiltro}
    sleep  2s

ClickDesactivarFiltro
    click button  ${BtnDesactivarFiltro}
    sleep  2s

ClickBotonEditar
    click button  ${BtnEditarv2}
    sleep  2s

ClickBotonEliminar
    click button  ${BtnEliminarv2}
    sleep  2s

ClickEliminacionConfirmada
    click button  ${BtnConfirmaEliminacionv2}
    sleep  2s

existeDocumento
    [Arguments]  ${Abrevia}
${elements} == find element ${listaDocumentos}
${pos} == get element size ${elements} - 1

   ${findelement} == find element "//table[@class='crud-table table table-striped table-hover mat-table']/tbody/tr["+${pos}+"]/td[1]"
   ${codeAbrv} == get text ${findelement}

#  ${findelement2} = find element "//table[@class='crud-table table table-striped table-hover mat-table']/tbody/tr["+${pos}+"]/td[2]"
#  ${NombreDoc} = get text ${findelement2}

IF ${codeAbrv} == ${Abrevia}
    Log to console   ${AssertError}  is  TRUE
ELSE
    Log to console   ${AssertError}  is  FALSE
FIN

retornoCodigo

retornoNombre

retornofiltroBusqueda

existePerfilEdit
