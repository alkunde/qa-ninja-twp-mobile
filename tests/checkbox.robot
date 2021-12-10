***Settings***
Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Keywords***
Marca linguagem ${linguagem}
    ${element}=         Set Variable    xpath=//android.widget.CheckBox[contains(@text, '${linguagem}')]
    Click Element                       ${element}
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/rvContainer
    Element Attribute Should Match      ${element}     checked     true

***Test Cases***
Deve marcar a opção Robot Framework
    Go To Checkbox
    Marca linguagem Robot Framework