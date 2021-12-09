***Settings***
Resource        ../resources/base.robot

***Test Cases***
Deve abrir a tela principal
    Open Session

    Wait Until Page Contains    Training Wheels Protocol
    Wait Until Page Contains    Mobile Version
    Close Application