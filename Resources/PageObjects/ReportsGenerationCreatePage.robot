*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElementsBK.py

*** Variables ***


*** Keywords ***

selectionLineaNegocio
    click element  ${RG_slcLineaNegocio}
    Sleep  2s

selectionOptLineaNegocio
    click element  ${RG_optLineaNegocio}
    Sleep  2s

selectionFilterByDateIni
    click element  ${RG_btnOpenCalendarIni}
    Sleep  2s
    click element  ${RG_sltYearIni}
    Sleep  2s
    click element  ${RG_optYearIni}
    Sleep  2s
    click element  ${RG_optMonthIni}
    Sleep  2s
    click element  ${RG_optDayIni}
    Sleep  2s

selectionFilterByDateFin
    click element  ${RG_btnOpenCalendarFin}
    Sleep  2s
    click element  ${RG_sltYearFin}
    Sleep  2s
    click element  ${RG_optYearFin}
    Sleep  2s
    click element  ${RG_optMonthFin}
    Sleep  2s
    click element  ${RG_optDayFin}
    Sleep  2s

selectionMonthIC
    click element  ${RG_sltMonthIC}
    Sleep  2s

selectionOptMonthIC
    click element  ${RG_optMonthIC}
    Sleep  2s

selectionYearIC
    click element  ${RG_sltYearIC}
    Sleep  2s

selectionOptYearIC
    click element  ${RG_optYearIC}
    Sleep  2s

selectionMonthIC2
    click element  ${RG_sltMonthIC}
    Sleep  2s

selectionOptMonthIC2
    click element  ${RG_optMonthIC2}
    Sleep  2s

selectionYearIC2
    click element  ${RG_sltYearIC}
    Sleep  2s

selectionOptYearIC2
    click element  ${RG_optYearIC2}
    Sleep  2s

selectionOptYearIC3
    click element  ${RG_optYearIC3}
    Sleep  2s