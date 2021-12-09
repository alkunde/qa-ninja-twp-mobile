***Settings***
Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Variables***
${TITLE}        id=io.qaninja.android.twp:id/dialogInfoTitle
${EMAIL}        id=io.qaninja.android.twp:id/etEmail
${PASSWORD}     id=io.qaninja.android.twp:id/etPassword
${BUTTON}       id=io.qaninja.android.twp:id/btnSubmit

***Test Cases***
Deve logar com sucesso
    Open Nav

    Open Screen FORMS

    Click Text                      LOGIN
    Wait Until Element Is Visible   ${TITLE}
    Wait Until Element Is Visible   ${EMAIL}
    Wait Until Element Is Visible   ${PASSWORD}
    Wait Until Element Is Visible   ${BUTTON}

    Element Text Should Be          ${TITLE}        Fala QA, vamos testar o login?
    Element Text Should Be          ${BUTTON}       ENTRAR

    Input Text                      ${EMAIL}        eu@papito.io
    Input Text                      ${PASSWORD}     qaninja
    Click Element                   ${BUTTON}
