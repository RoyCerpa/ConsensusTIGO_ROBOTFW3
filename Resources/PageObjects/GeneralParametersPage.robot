*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***


*** Keywords ***
# Formato numérico
selectionFormatNum
   click element  ${formatNum}

selectionFormatNum1
   click element  ${formatNum1}

selectionFormatNum2
   click element  ${formatNum2}

Click button Save Format Num
    click button  ${btn_saveformatNum}
    sleep  2s

Click button Confirmar Format Num
    click button  ${btn_confirmformatNum}
    sleep  2s


# Otas opciones
LinkOtrasOpciones
   click element  ${linkOtrasOpciones}
   wait until element is visible  //*[@id="tab-2"]/div/div[1]/div[1]/h2

selectionFormatNumNeg
   click element  ${formatNumNeg}

selectionFormatNumNegNull
   click element  ${formatNumNull}

selectionFormatNumNeg1
   click element  ${formatNumNeg1}

selectionFormatNumNeg2
   click element  ${formatNumNeg2}

selectCheck
   click element  ${selectCheck}

Click button Save Format Num Neg
    click button  ${btn_saveOtrasOpciones}
    sleep  2s

Click button Confirmar Format Num Neg
    click button  ${btn_confirmOtrasOpciones}
    sleep  2s


# Formato de Fecha
LinkFormatFecha
   click element  ${linkFormatFecha}
   wait until element is visible  //*[@id="tab-3"]/div/div[1]/div[1]/h2

selectionFormatFecha
   click element  ${FormatFecha}

selectionFormatFechaNull
   click element  ${FormatFechaNull}

selectionFormatFecha1
   click element  ${FormatFecha1}

selectionFormatFecha2
   click element  ${FormatFecha2}

Click button Save Format fecha
    click button  ${btn_saveFormatFecha}
    sleep  2s

Click button Confirmar Format fecha
    click button  ${btn_confirmFormatFecha}
    sleep  2s


# Configuración contable
LinkConfigContable
   click element  ${linkConfigContable}
   wait until element is visible  //*[@id="tab-4"]/div/div[1]/div[1]/h2

setMinCtaCont
    [Arguments]  ${MinCtaContable}
    input text  ${MinCtaCont}  ${MinCtaContable}
    sleep  2s

setMaxCtaCont
    [Arguments]  ${MaxCtaContable}
    input text  ${MaxCtaCont}  ${MaxCtaContable}
    sleep  2s

SelectCheck1
   click element  ${selectCheck1}

SelectCheck2
   click element  ${selectCheck2}

Click button Save Config Contab
    click button  ${btn_saveConfigContab}
    sleep  2s

Click button Confirmar Config Contab
    click button  ${btn_confirmConfigContab}
    sleep  2s


# Entidad recaudadora
LinkEntidRecaud
   click element  ${linkEntidRecaud}
   wait until element is visible  //*[@id="tab-5"]/div/div[1]/div[1]/h2

setCantidadMaxDiasLatencia
    [Arguments]  ${maxDiasLatencia}
    input text  ${diasLatencia}  ${maxDiasLatencia}
    sleep  2s

Click button Save Entid Recaud
    click button  ${btn_saveEntidRecaud}
    sleep  2s

Click button Confirmar Entid Recaud
    click button  ${btn_confirmEntidRecaud}
    sleep  2s