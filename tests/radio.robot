*** Settings ***

Library    AppiumLibrary

Resource    ../resources/base.resource

*** Test Cases ***
Deve selecionar a linguagem JavaScript

    Start session
    Get Started
    Navigate to    Check e Radio
    Go to item     Botões de radio    Escolha sua linguagem preferida
    
    Click Element  xpath=//android.widget.RadioButton[contains(@text, "Javascript")]
    
    Sleep    2

    Close session