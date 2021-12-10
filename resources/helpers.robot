***Settings***
Documentation       Aqui teremos as keywords helpers

***Variables***
${START}            COMEÇAR
${HAMBURGER}        xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NAVIGATION}       id=io.qaninja.android.twp:id/navView
${TOOLBAR_TITLE}    id=io.qaninja.android.twp:id/toolbarTitle

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