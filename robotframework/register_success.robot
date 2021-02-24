*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    http://127.0.0.1:5500/EventRegistration.html
${fname}    Somsri
${lname}    Sodsai
${email}    somsri@kkumail.com
*** Keywords ***
เปิดเว็บ EventRegistration.html
    Open Browser     ${url}     ${browser}

fill_blank
    Input Text    id=firstname    ${fname} 
    Input Text    id=lastname     ${lname}
    Input Text    id=email    ${email}
    Click button    id=registerButton

Welcome Page Should Be Open
    Location Should Be    http://127.0.0.1:5500/Success.html?firstname=Somsri&lastname=Sodsai&email=somsri%40kkumail.com
    Title Should Be    Success 
    Element Text Should Be    //h1    Success
    Element Text Should Be    //h2    Thank you for participating in our event

*** Test Cases ***
Search case
    เปิดเว็บ EventRegistration.html
    fill_blank
    Welcome Page Should Be Open
    Close Browser