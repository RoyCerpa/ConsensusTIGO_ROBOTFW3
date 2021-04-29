*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${env}  imp
&{url}  qa=http://192.168.27.90:5002/latest/#/home  qa2=http://192.168.21.40:1102/latest/#/home  imp=http://192.168.27.90:5002/latest/#/home


*** Keywords ***
Start TestCase
    Open Browser  ${url.${env}}  chrome
    Maximize Browser Window

Finish TestCase
    Close browser















#Library   SeleniumLibrary  timeout=10s
    #uat=http://uat.demo.com  dev=http://dev.demo.com