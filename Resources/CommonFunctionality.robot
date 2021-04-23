*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${env}  qa
&{url}  qa=http://192.168.27.90:1102/latest/  dev=192.168.27.90:5002/latest/  qa2=http://192.168.27.90:1002/latest/

*** Keywords ***
Start TestCase
    Open Browser  ${url.${env}}  chrome
    Maximize Browser Window

Finish TestCase
    Close browser















#Library   SeleniumLibrary  timeout=10s
    #uat=http://uat.demo.com  dev=http://dev.demo.com