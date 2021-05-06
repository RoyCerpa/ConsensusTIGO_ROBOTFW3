*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***


*** Keywords ***

selectionConceptoEq
    click element  ${SelectionConceptoEq}

selectionOptionConceptoEq
    click element  ${OptionEq}

setDescripcionEq
    [Arguments]  ${Abrev}
    input text  ${DescriptionEq}  ${Abrev}
    sleep  2s

selectionOptionTipoEq
    click element  ${SelectionOptionTipoEq}

selectionOptionVP
    click element  ${SelectionOptionVP}



