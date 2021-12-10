***Settings***
Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Variables***
${LIST_OPTIONS}     class=android.widget.ListView

***Test Cases***
Deve excluir o cap da lista
    Go To Avengers List

    Swipe By Percent                    88      18      47      18
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/btnRemove
    Click Element                       id=io.qaninja.android.twp:id/btnRemove
    Wait Until Page Contains            Item removido! (posição = 0)
