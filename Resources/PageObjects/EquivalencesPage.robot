*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***
${AssertError}  Set variable  FALSE

*** Keywords ***
clicNuevoCommercialEq
    click button  ${boton_NuevoEq}
    sleep  2s

clicbotonGuardarEq
    click button  ${boton_GuardarEq}
    sleep  2s

clicSeccionValoresOrigenEq
    click button  ${boton_SeccionVal_Origen}
    sleep  2s






clicOpcionFiltroEq
    click button  ${Opcion_FiltroEq}
    sleep  2s

clicFiltroByID
    click button  ${FiltroById}
    sleep  2s

clicFiltroByDescripcion
    click button  ${FiltroByDescripcionvf}
    sleep  2s

clicBuscar
    click button  ${Opcion_Buscarvf}
    sleep  2s

setFiltroBasico
    [Arguments]  ${OpFiltro}
    input text  ${Opcion_Filtrovf}  ${OpFiltro}
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
    click button  ${BtnConfirma_Eliminacionv2}
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
