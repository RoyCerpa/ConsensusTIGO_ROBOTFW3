*** Settings ***
Library   SeleniumLibrary

*** Variables ***

*** Keywords ***
Input username and password
    [Arguments]  ${username}  ${password}
    Input Text  //*[@id="l-login"]/div[1]/div/input  ${username}
    Input Password  //*[@id="l-login"]/div[2]/div/input  ${password}

Click on button LogIN
    PressKeys  //*[@id="l-login"]/button  [Return]
    sleep  2s

Verify Result Expected for USER NAME Incorrect
    Page Should Contain  Usuario no existe
    sleep  2s

Verify Result Expected for PASSWORD Incorrect
    Page Should Contain  Acceso denegado
    sleep  2s




#${search_text}  robot
#@{search_text}  books  travel  robot  gifts
#&{search_text}  abc=books  bcd=travel


Input Search Text and Click Search
    [Arguments]  ${search_text}
    input text   xpath://*[@id="gh-ac"]  ${search_text}
    press keys   xpath://*[@id="gh-btn"]  [Return]


Click on Advanced Search Link
    click element  //*[@id="gh-as-a"]


Search for another text
    input text   xpath://*[@id="gh-ac"]  @{search_text}[1]
