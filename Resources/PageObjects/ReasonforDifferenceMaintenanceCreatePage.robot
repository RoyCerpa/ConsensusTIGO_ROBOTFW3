*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***


*** Keywords ***
setDescripcionMotivo
    [Arguments]  ${Abrev}
    input text  ${DescricionMotivo}  ${Abrev}
    sleep  2s
#    wait until element is visible  //*[@id='tab-1']/div/div[1]/div[1]/h2

selectionCtaContableAsociada
    click element  ${CtaContableAsociadavf}

selectionOptCtaContableAsociada
    click element  ${OptionCtaConAsociada}

selectionTipoDocContable
    click element  ${TipoDocContable}

selectionOptTipoDocContable
    click element  ${OptionTipoDocContable}


setDescripcionMotivoMOD
    [Arguments]  ${Abrev}
    input text  ${DescricionMotivomod}  ${Abrev}  clear=true
    sleep  2s
#    wait until element is visible  //*[@id='tab-1']/div/div[1]/div[1]/h2

selectionCtaContableAsociadaMOD
    click element  ${CtaContableAsociadamod}

selectionOptCtaContableAsociadaMOD
    click element  ${OptionCtaConAsociadamod}

selectionTipoDocContableMOD
    click element  ${TipoDocContablemod}

selectionOptTipoDocContableMOD
    click element  ${OptionTipoDocContablemod}


