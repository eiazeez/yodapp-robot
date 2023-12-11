*** Settings ***

Resource    ../resources/base.resource

*** Keywords ***
Select Level
    [Arguments]    ${level}

    Click Element  id=com.qaxperience.yodapp:id/spinnerJob
    Wait Until Element Is Visible    xpath=//android.widget.ListView
    Click Text    ${level}

*** Test Cases ***
Deve escolher o nível Padawan

    Start session

    Get Started
    Navigate to    Formulários
    Go to item     Cadastro    Crie sua conta.

    Select Level   Padawan

    Close session

Deve escolher o nível Jedi

    Start session

    Get Started
    Navigate to    Formulários
    Go to item     Cadastro    Crie sua conta.

    Select Level   Jedi

    Close session

Deve escolher o nível Sith

    Start session

    Get Started
    Navigate to    Formulários
    Go to item     Cadastro    Crie sua conta.

    Select Level   Sith

    Close session

Deve escolher o nível Outros

    Start session

    Get Started
    Navigate to    Formulários
    Go to item     Cadastro    Crie sua conta.

    Select Level   Outros

    Close session