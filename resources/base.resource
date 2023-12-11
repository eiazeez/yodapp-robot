*** Settings ***

Library            AppiumLibrary

*** Variables ***
${START}        QAX

*** Keywords ***

Start session
    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/app/yodapp-beta.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true

Get Started
    Wait Until Page Contains         ${START}    5
    Click Text                       ${START}

Navigate to
    [Arguments]    ${item_text}
    ${burger}    Set Variable        xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

    Wait Until Element Is Visible    ${burger}    5
    Click Element                    ${burger}

    ${menu_click}    Set Variable    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${item_text}"]
    
    Wait Until Element Is Visible    ${menu_click}    5
    Click Element                    ${menu_click}
    
Go to item
    [Arguments]    ${item}    ${checkpoint}
    Wait Until Page Contains         ${item}    5
    Click Text                       ${item}
    Wait Until Page Contains         ${checkpoint}

Close session
    Close Application