*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${env}  qa
&{url}  qa=http://192.168.27.90:1102/latest/  imp=192.168.27.90:5002/latest/  qa2=http://192.168.21.40:1102/consensus
# URL: http://css-service.tbs.com:7081/consensus        # Credenciales: admin/baduka1190


*** Keywords ***
Start TestCase
    Open Browser  ${url.${env}}  chrome
    Maximize Browser Window

Finish TestCase
    Close browser









#Usuario :      admin
#Password :  201adm$2k21
#ruta: /cssfiles/csshared/in/sap/extban












#Library   SeleniumLibrary  timeout=10s
    #uat=http://uat.demo.com  dev=http://dev.demo.com