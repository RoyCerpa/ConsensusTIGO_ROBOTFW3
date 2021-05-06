*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***
${AssertError}  Set variable  FALSE

*** Keywords ***

clicNuevoCommercial
    click button  ${boton_NuevoEq}
    sleep  2s

clicbotonGuardar
    click button  ${boton_GuardarEq}
    sleep  2s

clicSeccionValoresOrigen
    click element  ${SeccionVal_Origen}
    sleep  2s

clicOpcionFiltroEq
    click button  ${Opcion_FiltroEq}
    sleep  2s

setFiltroBasico
    [Arguments]  ${OpFiltro}
    input text  ${Opcion_FiltroEq}  ${OpFiltro}
    sleep  2s

clicFiltroById
    click button  ${FiltroById}
    sleep  2s

clicFiltroByConcepto
    click button  ${FiltroByConceptoEq}
    sleep  2s

clicFiltroByDescripcion
    click element  ${FiltroByDescripcionEq}
    sleep  2s

ClickDesactivarFiltro
    click button  ${BtnDesactivar_FiltroEq}
    sleep  2s

clicBuscar
    click button  ${Opcion_BuscarEq}
    sleep  2s



ClickBotonEditar
    click button  ${Btn_EditarEq}
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



#Obsoleto
