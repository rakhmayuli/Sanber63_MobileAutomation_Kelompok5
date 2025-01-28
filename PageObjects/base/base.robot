*** Settings ***
Library                AppiumLibrary

*** Variables ***
${APPIUM_SERVER_URL}    http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     11    
${DEVICE_NAME}          SM_A507FN
# ${PLATFORM_NAME}       Android 
# ${PLATFORM_VERSION}    9.0
${APP_PACKAGE}          com.example.myapplication
${APP_ACTIVITY}         com.example.myapplication.MainActivity
*** Keywords ***
Open Flight Android Application
    Open Application          remote_url=${APPIUM_SERVER_URL} 
    ...                       platformName=${PLATFORM_NAME}   
    ...                       platformVersion=${PLATFORM_VERSION}    
    ...                       deviceName=${DEVICE_NAME}    
    ...                       appPackage=${APP_PACKAGE}    
    ...                       appActivity=${APP_ACTIVITY}


Close Flight Application
    Close All Applications
