***Settings***
Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***
Deve mover o Hulk para o topo da lista
    Go To Avengers List

    Drag And Drop           io.qaninja.android.twp:id/txtName       3       0
    Sleep                   5

Deve mover o Hulk para o topo da lista 1
    Go To Avengers List

    Drag And Drop           io.qaninja.android.twp:id/image_view       3       0
    Sleep                   5
