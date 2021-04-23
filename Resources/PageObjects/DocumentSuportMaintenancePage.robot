*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***


*** Keywords ***
Click button New
    click button  ${botonNuevo}
    sleep  2s
    wait until element is visible  //*[@id='tab-1']/div/div[1]/div[1]/h2

