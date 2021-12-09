***Settings***
Library         AppiumLibrary

***Variables***
${START}            COMEÇAR
${HAMBURGER}        xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NAVIGATION}       id=io.qaninja.android.twp:id/navView
${TOOLBAR_TITLE}    id=io.qaninja.android.twp:id/toolbarTitle

***Keywords***
Open Session
    Set Appium Timeout  5
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 app=${EXECDIR}/app/twp.apk

Close Session
    Close Application

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