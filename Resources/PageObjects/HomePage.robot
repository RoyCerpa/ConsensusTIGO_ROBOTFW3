*** Settings ***
Library   SeleniumLibrary
Variables  ../WebElements.py

*** Variables ***


*** Keywords ***
Verify Result Expected for LOG IN Correct
    Wait Until Element Is Visible  ${iconoMainPagev2}
    title should be  CONSENSUS