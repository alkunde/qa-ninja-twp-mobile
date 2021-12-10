***Settings***
Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Keywords***
Seleciona linguagem ${linguagem}
    ${element}=         Set Variable    xpath=//android.widget.RadioButton[contains(@text, '${linguagem}')]
    Click Element                       ${element}
    Wait Until Element Is Visible       ${element}
    Element Attribute Should Match      ${element}     checked     true

***Test Cases***
Deve selecionar a opção Python
    Go To Radio Buttons
    Seleciona linguagem Python

Deve selecionar a opção Java
    Go To Radio Buttons
    Seleciona linguagem Java

Deve selecionar a opção Ruby
    Go To Radio Buttons
    Seleciona linguagem Ruby

Deve selecionar a opção Javascript
    Go To Radio Buttons
    Seleciona linguagem Javascript

Deve selecionar a opção Elixir
    Go To Radio Buttons
    Seleciona linguagem Elixir

Deve selecionar a opção Go Lang
    Go To Radio Buttons
    Seleciona linguagem Go Lang

Deve selecionar a opção C#
    Go To Radio Buttons
    Seleciona linguagem C#
