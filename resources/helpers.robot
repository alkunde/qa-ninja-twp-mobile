***Settings***
Documentation       Aqui teremos as keywords helpers

***Variables***
${START}            COMEÇAR
${HAMBURGER}        xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NAVIGATION}       id=io.qaninja.android.twp:id/navView
${TOOLBAR_TITLE}    id=io.qaninja.android.twp:id/toolbarTitle

${REGISTER_TITLE}   id=io.qaninja.android.twp:id/dialogInfoTitle
${REG_NAME}         id=io.qaninja.android.twp:id/etUsername
${REG_EMAIL}        id=io.qaninja.android.twp:id/etEmail
${REG_ASSWORD}      id=io.qaninja.android.twp:id/etPassword
${REG_SPINNER}      id=io.qaninja.android.twp:id/spinnerJob
${REG_BUTTON}       id=io.qaninja.android.twp:id/btnSubmit

***Keywords***
Get Started
    Wait Until Page Contains            ${START}
    Click Text                          ${START}

Open Nav
    Wait Until Element Is Visible       ${HAMBURGER}
    Click Element                       ${HAMBURGER}
    Wait Until Element Is Visible       ${NAVIGATION}

Open Screen ${screen}
    Click Text                          ${screen}
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}
    Element Text Should Be              ${TOOLBAR_TITLE}   ${screen}

Go To Login Form
    Open Nav

    Open Screen FORMS

    Click Text                      LOGIN
    Wait Until Element Is Visible   ${TITLE}
    Wait Until Element Is Visible   ${EMAIL}
    Wait Until Element Is Visible   ${PASSWORD}
    Wait Until Element Is Visible   ${BUTTON}

    Element Text Should Be          ${TITLE}        Fala QA, vamos testar o login?
    Element Text Should Be          ${BUTTON}       ENTRAR

Go To Radio Buttons
    Open Nav

    Open Screen INPUTS

    Click Text                      BOTÕES DE RADIO
    Wait Until Page Contains        Escolha sua linguagem preferida

Go To Checkbox
    Open Nav

    Open Screen INPUTS

    Click Text                      CHECKBOX
    Wait Until Page Contains        Marque as techs que usam Appium

Go To Short Click
    Open Nav

    Click Text                      BOTÕES
    Wait Until Page Contains        CLIQUE SIMPLES
    Click Text                      CLIQUE SIMPLES

    Wait Until Page Contains        Botão clique simples

Go To Long Click
    Open Nav

    Click Text                      BOTÕES
    Wait Until Page Contains        CLIQUE LONGO
    Click Text                      CLIQUE LONGO

    Wait Until Page Contains        Botão clique longo

Go To Register Form
    Open Nav

    Open Screen FORMS
    Click Text                      CADASTRO
    Wait Until Element Is Visible   ${REGISTER_TITLE}
    Element Text Should Be          ${REGISTER_TITLE}       Bem-vindo, crie sua conta.

Go To Avengers List
    Open Nav

    Open Screen AVENGERS
    Click Text                      LISTA