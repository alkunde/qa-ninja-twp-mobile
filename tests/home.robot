***Settings***
Resource        ../resources/base.robot

***Test Cases***
Deve abrir a tela principal
    Set Appium Timeout  5
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 app=${EXECDIR}/app/twp.apk

    Wait Until Page Contains    Training Wheels Protocol
    Wait Until Page Contains    Mobile Version
    Close Application