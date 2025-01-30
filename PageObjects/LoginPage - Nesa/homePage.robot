*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Open Flight Application
    Open Application 
    ...    remote_url=http://127.0.0.1:4723/wd/hub 
    ...    platformName=Android 
    ...    platformVersion=10.0 
    ...    deviceName=emulator-5554 
    ...    app.Package=com.example.myapplication 
    ...    appActivity=com.example.myapplication.MainActivity
