*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElementsBK.py

*** Variables ***


*** Keywords ***

selectionTipoMoneda
    click element  ${SCM_slcMonedaPrin}

selectionOptMoneda
    click element  ${SCM_optMonedaPrin}
    sleep  2s

setEqComercialIMG
    [Arguments]  ${AbrevIMG}
    input text  ${SCM_inpEqComercialIMG}  ${AbrevIMG}  clear=true
    sleep  2s

setEqComercialSAP
    [Arguments]  ${AbrevSAP}
    input text  ${SCM_inpEqComercialSAP}  ${AbrevSAP}  clear=true
    sleep  2s



selectionTipoMonedaRV
    click element  ${SCM_slcMonedaPrinRV}

selectionOptMonedaRV
    click element  ${SCM_optMonedaPrinRV}

setEqComercialIMG_RV
    [Arguments]  ${AbrevIMG}
    input text  ${SCM_inpEqComercialIMG}  ${AbrevIMG}  clear=true
    sleep  2s

setEqComercialSAP_RV
    [Arguments]  ${AbrevSAP}
    input text  ${SCM_inpEqComercialSAP}  ${AbrevSAP}  clear=true
    sleep  2s


