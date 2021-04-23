*** Settings ***
Library   SeleniumLibrary

*** Variables ***
#${txtbox_username}  //*[@id="l-login"]/div[1]/div/input
#${txtbox_password}  //*[@id="l-login"]/div[2]/div/input
#${btn_login}  //*[@id="l-login"]/button


#${btn_configuration}  //*[@id="side-menu"]/li[5]/a
#${btn_documentsupport}  //*[@id="side-menu"]/li[5]/ul/li[3]/a
#${txt_pageDocument}  //*[@id="page-wrapper"]/xdf-breadcrumb/div/div[1]/h2
*** Keywords ***
#${search_text}  robot
#@{search_text}  books  travel  robot  gifts
#&{search_text}  abc=books  bcd=travel

setUsernameLogin
    [Arguments]  ${username}
    Input Text   ${txtbox_username}  ${username}


setPasswordLogin
    [Arguments]  ${password}
    Input Password  ${txtbox_password}  ${password}


clickButtonLogin
    PressKeys  ${btn_login}  [Return]


