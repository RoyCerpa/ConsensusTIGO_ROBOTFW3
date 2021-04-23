*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***


*** Keywords ***
setNumeroCuenta
    [Arguments]  ${NumCta}
    input text  ${NumeroCta}  ${NumCta}
    sleep  2s

setDescripcion
    [Arguments]  ${Descripcion}
    input text  ${DescripcionCta}  ${Descripcion}
    sleep  2s

selectionConfiguracionContable
   click element  ${SelectConfigContable}

selectionDeudora
   click element  ${ChooseValueDeudora}

selectionAcreedora
   click element  ${ChooseValueAcreedora}

LinkEquivalenciaComercial
   click element  ${LinkEquivalComer}
   wait until element is visible  //*[@id='tab-2']/div/byte-commercial-equivalence-commons/div/div[1]/h2

setSistemaOrigenSAP
    [Arguments]  ${SistemaOrigenSAP}
    input text  ${SAPValue}  ${SistemaOrigenSAP}
    sleep  2s

LinkValoresComplementarios
    click element  ${LinkValueCompl}
    wait until element is visible  //*[@id='tab-3']/div/byte-complementary-value/div/div[1]/h2

setValorSAPPos
    [Arguments]  ${SAPPos}
    input text  ${ValueSAPPos}  ${SAPPos}
    sleep  2s

setValorSAPNeg
    [Arguments]  ${SAPNeg}
    input text  ${ValueSAPNeg}  ${SAPNeg}
    sleep  2s

Click button Save Account Created
    click button  ${boton_Save}
    sleep  2s
    wait until element is visible  //*[@id="page-wrapper"]/xdf-breadcrumb/div/div[1]/h2


setDescripcionAccountEdit
    [Arguments]  ${AccountEdit}
    input text  ${DescripcionCtaEdit}  ${AccountEdit}  clear=true
    sleep  2s

setSistemaOrigenSAPEdit
    [Arguments]  ${EditSAPValue}
    input text  ${SAPValueEdit}  ${EditSAPValue}  clear=true
    sleep  2s

setValorSAPPosEdit
    [Arguments]  ${EditSAPPos}
    input text  ${ValueSAPPosEdit}  ${EditSAPPos}  clear=true
    sleep  2s

setValorSAPNegEdit
    [Arguments]  ${EditSAPNeg}
    input text  ${ValueSAPNegEdit}  ${EditSAPNeg}  clear=true
    sleep  2s

Click button Confirmar Edit
    click button  ${btn_confirmEditAccount}
    sleep  2s