*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***


*** Keywords ***
# Informe de Cuadre y Legalización de Recaudo
LinkInfoCuadreLegalRecaudo
   click element  ${opGestorReport1}
   wait until element is visible  //*[@id="mat-dialog-0"]/byte-report-popup/div[1]/div/div/span

selectIconCalendar
  click element  ${btn_FechaInicioRecaudo1}

selectYearFechaInicio1
  click element  ${btn_SelectYearFechaInicio1}

selectOneYearFechaInicio1
  click element  ${selectYearFechaInicio1}

selectOneMounthFechaInicio1
  click element  ${selectMesFechaInicio1}

selectOneDayFechaInicio1
  click element  ${selectDayFechaInicio1}


selectIconCalendar2
  click element  ${btn_FechaFinRecaudo1}

selectYearFechaFin1
  click element  ${btn_SelectYearFechaFin1}

selectOneYearFechaFin1
  click element  ${selectYearFechaFin1}

selectOneMounthFechaFin1
  click element  ${selectMesFechaFin1}

selectOneDayFechaFin1
  click element  ${selectDayFechaFin1}

#setFechaInicioRecaudo1
#  [Arguments]  ${dateInicioRecaudo1}
#  input text  ${fechaInicioRecaudo1}  ${dateInicioRecaudo1}  clear=true
#  sleep  2s

#setFechaFinRecaudo1
#  [Arguments]  ${dateFinRecaudo1}
#  input text  ${fechaFinRecaudo1}  ${dateFinRecaudo1}  clear=true
#  sleep  2s

selectOpcionesLineaNegocio
  click element  ${selectLineaNegocio}

selectLineaPospago
  click element  ${lineaPospago}

Click button Generar Report Cuadre Legaliz
    click button  ${btn_generarReport1}
    sleep  2s

Click button Cerrar Report Cuadre Legaliz
    click button  ${btn_closeReport1}
    sleep  2s


# Informe para Cotejo y Pago del Recaudo
LinkInfoCotejoPagoRecaudo
   click element  ${opGestorReport2}

selectIconCalendar3
  click element  ${btn_FechaInicioRecaudo2}

selectYearFechaInicio3
  click element  ${btn_SelectYearFechaInicio2}

selectOneYearFechaInicio3
  click element  ${selectYearFechaInicio2}

selectOneMounthFechaInicio3
  click element  ${selectMesFechaInicio2}

selectOneDayFechaInicio3
  click element  ${selectDayFechaInicio2}


selectIconCalendar4
  click element  ${btn_FechaFinRecaudo2}

selectYearFechaFin4
  click element  ${btn_SelectYearFechaFin2}

selectOneYearFechaFin4
  click element  ${selectYearFechaFin2}

selectOneMounthFechaFin4
  click element  ${selectMesFechaFin2}

selectOneDayFechaFin4
  click element  ${selectDayFechaFin2}

#setFechaInicioRecaudo1
#  [Arguments]  ${dateInicioRecaudo1}
#  input text  ${fechaInicioRecaudo1}  ${dateInicioRecaudo1}  clear=true
#  sleep  2s

#setFechaFinRecaudo1
#  [Arguments]  ${dateFinRecaudo1}
#  input text  ${fechaFinRecaudo1}  ${dateFinRecaudo1}  clear=true
#  sleep  2s

selectOpcionesLineaNegocio2
  click element  ${selectLineaNegocio2}

selectLineaPrepago
  click element  ${lineaPrepago}

Click button Generar Report Cotejo
    click button  ${btn_generarReport2}
    sleep  2s

Click button Cerrar Report Cotejo
    click button  ${btn_closeReport2}
    sleep  2s