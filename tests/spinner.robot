***Settings***
Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Variables***
${LIST_OPTIONS}     class=android.widget.ListView

***Test Cases***
Deve selecionar o perfil de QA
    Go To Register Form

    Choice Job  QA

Deve selecionar o perfil de DevOps
    Go To Register Form

    Choice Job  DevOps

***Keywords***
Choice Job
    [Arguments]     ${job}
    Click Element                       ${REG_SPINNER}
    Wait Until Element Is Visible       ${LIST_OPTIONS}
    Click Text                          ${job}