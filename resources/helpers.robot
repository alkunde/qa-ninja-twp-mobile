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
