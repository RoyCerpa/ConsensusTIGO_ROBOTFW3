*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***


*** Keywords ***

selectionConcepto
    click element  ${SelectionConceptoEq}
    sleep  2s

selectionOptionConcepto
    click element  ${OptionEq}
    sleep  2s

setDescripcion
    [Arguments]  ${Abrev}
    input text  ${DescriptionEq}  ${Abrev}
    sleep  2s

selectionOptionTipo
    click element  ${SelectionOptionTipoEq}
    sleep  2s

selectionOptionVP
    click element  ${SelectionOptionVP}
    sleep  2s


setDescripcionMod
    [Arguments]  ${Abrev}
    input text  ${DescriptionEqMod}  ${Abrev}  clear=true
    sleep  2s

selectionOptionTipoMod
    click element  ${SelectionOptionTipoEqMod}
    sleep  2s

selectionOptionVPMod
    click element  ${SelectionOptionVPMod}
    sleep  2s

selectionOptionVPRevert
    click element  ${SelectionOptionVPRevert}
    sleep  2s