*** Settings ***
Library     AppiumLibrary

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_APP_PACKAGE}        com.android.chrome
${ANDROID_APP_ACTIVITY}       com.google.android.apps.chrome.Main
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   13
${ANDROID_DEVICE_NAME}        Mobile_33
${BROWSER_NAME}               Chrome

*** Test Cases ***
Simple test to turn off the Discover feeds in Chrome
    Open Application    http://127.0.0.1:4723    automationName=${ANDROID_AUTOMATION_NAME}
    ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
    ...  deviceName=${ANDROID_DEVICE_NAME}
    Click Element    //android.widget.TextView[@content-desc="Chrome"]
    Sleep    5
    Click Element       //android.widget.ImageButton[@content-desc="Options for Discover"]
    Click Text    Turn off
    Close Application
