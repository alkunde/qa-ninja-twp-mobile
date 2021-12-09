***Settings***
Resource        ../resources/base.robot

# Executa a keyword antes de cada testecase
Test Setup      Open Session
# Executa a keyword depois de cada testcase
Test Teardown   Close Session

***Test Cases***
Deve acessar a tela Dialogs
    Open Nav

    Open Screen DIALOGS

Deve acessar a tela de formulários
    Open Nav

    Open Screen FORMS

Deve acessar a tela de vingadores
    Open Nav

    Open Screen AVENGERS
