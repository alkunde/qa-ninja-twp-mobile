***Settings***
Library         AppiumLibrary

# Executa a keyword antes de cada testecase
Test Setup      Open Session
# Executa a keyword depois de cada testcase
Test Teardown   Close Session

***Test Cases***
Deve acessar a tela Dialogs
    Get Started    

    Open Nav

    Open Screen DIALOGS

Deve acessar a tela de formulários
    Get Started

    Open Nav

    Open Screen FORMS

Deve acessar a tela de vingadores
    Get Started

    Open Nav

    Open Screen AVENGERS

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
    Wait Until Page Contains            COMEÇAR
    Click Text                          COMEÇAR

Open Nav
    Wait Until Element Is Visible       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Click Element                       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/navView

Open Screen ${screen}
    Click Text                          ${screen}
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/toolbarTitle
    Element Text Should Be              id=io.qaninja.android.twp:id/toolbarTitle   ${screen}