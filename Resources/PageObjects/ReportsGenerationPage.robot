*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElementsBK.py

*** Variables ***
# -----> pendiente de implemtacion ${AssertError}  Set variable  FALSE

*** Keywords ***
clickGenerationReport
    click button  ${RG_btnGenReport}
    sleep  2s

clickCloseReport
    click button  ${RG_btnCloseReport}
    sleep  2s