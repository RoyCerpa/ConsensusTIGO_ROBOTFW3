*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***
${AssertError}  Set variable  FALSE

*** Keywords ***
clicNuevoMotivoDiferencia
    click button  ${boton_Nuevo}
    sleep  2s

clicbotonGuardarMotivo
    click button  ${boton_Guardar}
    sleep  2s

clicOpcionFiltro
    click button  ${Opcion_Filtro}
    sleep  2s

clicFiltroByID
    click button  ${FiltroById}
    sleep  2s

clicFiltroByDescripcion
    click button  ${FiltroByDescripcion}
    sleep  2s

clicBuscar
    click button  ${Opcion_Buscar}
    sleep  2s

setFiltroBasico
    [Arguments]  ${OpFiltro}
    input text  ${Opcion_Filtro}  ${OpFiltro}
    sleep  2s

ClickDesactivarFiltro
    click button  ${BtnDesactivar_Filtro}
    sleep  2s

ClickBotonEditar
    click button  ${Btn_Editar}
    sleep  2s

ClickBotonEliminar
    click button  ${Btn_Eliminar}
    sleep  2s

ClickEliminacionConfirmada
    click button  ${BtnConfirma_Eliminacion}
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
