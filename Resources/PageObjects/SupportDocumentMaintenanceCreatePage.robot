*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***


*** Keywords ***
setAbreviaturaDocumento
    [Arguments]  ${Abrev}
    input text  ${Abreviatura}  ${Abrev}
    sleep  2s
#    wait until element is visible  //*[@id='tab-1']/div/div[1]/div[1]/h2

setNombreDocumento
    [Arguments]  ${nom}
    input text  ${nombre}  ${nom}
    sleep  2s

setDescripcionDocumento
    [Arguments]  ${Desc}
    input text  ${Descripcion}  ${Desc}
    sleep  2s

selectionOptionCargo
    click element  ${OptionCargo}

selectionOptionAbono
    click element  ${OptionAbono}

setEquivComercial
    click element  ${EquivComercial}

setSistemaOrigenSAP
    [Arguments]  ${sistOrigenSAP}
    input text  ${sistemaOrigenSAPv2}  ${sistOrigenSAP}
    sleep  2s

selectionOptionCargoEdit
    click element  ${OptionCargoMod}

setNombreDocumentoEdit
    [Arguments]  ${Nommod}
    input text  ${Nombremodv2}  ${Nommod}  clear=true
    sleep  2s

setDescripcionDocumentoEdit
    [Arguments]  ${Descmod}
    input text  ${Descripcionmodv2}  ${Descmod}  clear=true
    sleep  2s