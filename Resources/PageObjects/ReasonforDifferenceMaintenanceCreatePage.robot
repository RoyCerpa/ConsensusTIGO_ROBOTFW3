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

selectionCtaContableAsociaca
    click element  ${CtaContableAsociaca}

selectionOptCtaContableAsociaca
    click element  ${OptionCtaConAsociada}

selectionTipoDocContable
    click element  ${TipoDocContable}

selectionOptTipoDocContable
    click element  ${OptionTipoDocContable}


setDescripcionMotivoMOD
    [Arguments]  ${Abrev}
    input text  ${DescricionMotivomod}  ${Abrev}
    sleep  2s
#    wait until element is visible  //*[@id='tab-1']/div/div[1]/div[1]/h2

selectionCtaContableAsociacaMOD
    click element  ${CtaContableAsociacamod}

selectionOptCtaContableAsociacaMOD
    click element  ${OptionCtaConAsociadamod}

selectionTipoDocContableMOD
    click element  ${TipoDocContablemod}

selectionOptCtaContableAsociacaMOD
    click element  ${OptionTipoDocContablemod}


