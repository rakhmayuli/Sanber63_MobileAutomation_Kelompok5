*** Settings ***
Library    AppiumLibrary

*** Variables ***
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    10.0
${DEVICE_NAME}    emulator-5554
${APP_PACKAGE}    com.example.myapplication
${APP_ACTIVITY}    com.example.myapplication.MainActivity
${REMOTE_URL}    http://127.0.0.1:4723/wd/hub

# Open Flight Application
# Verify Home Screen Appears
# Click Sign In Button on Home Screen
# Verify Login Screen Appears
# Input Username
# Input Password
# Click Sign In Button on Login Screen
# Verify User Succesfully Login
# Close Application

*** Keywords ***
Open Flight Application
    Open Application 
    ...    remote_url=http://127.0.0.1:4723/wd/hub 
    ...    platformName=Android 
    ...    platformVersion=10.0 
    ...    deviceName=emulator-5554 
    ...    app.Package=com.example.myapplication 
    ...    appActivity=com.example.myapplication.MainActivity

Verify Home Screen Appears
    Wait Until Element Is Visible         locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView"]
Click Sign In Button on Home Screen
    Click Element         locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]
Input Username
    Wait Until Element Is Visible    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    Input Text    //android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    support@ngendigital.com
Input Password
    Input Text        //android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    abc123
Click Sign In Button on Login Screen
    Click Element    //android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]
Verify Login Screen Appears
    Wait Until Element Is Visible         //android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]
Close Flight Application
    Close Application
Input Username Wrong
    Input Text    //android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    support@gendigital.com
Input Password Wrong
    Input Text  //android.widget.EditText[@resource-id="com.example.myapplication:id/password"]       abd123
Verify Login Screen Appears2
    Wait Until Element Is Visible  Invalid username/password
Input Username1
        Wait Until Element Is Visible    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
        Input Text    //android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    0
Input Password1
    Input Text        //android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    0

*** Test Cases ***
User should be able to login with valid data
    Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button on Home Screen
    Input Username
    Input Password
    Click Sign In Button on Login Screen
    Verify Login Screen Appears
    Close Flight Application
    
User input wrong username to login
    Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button on Home Screen
    Input Username Wrong
    Input Password
    Click Sign In Button on Login Screen
    Close Flight Application

User input wrong password to login
    Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button on Home Screen
    Input Username
    Input Password Wrong
    Click Sign In Button on Login Screen
    Close Flight Application

User input zero username
    Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button on Home Screen
    Input Username1
    Input Password
    Click Sign In Button on Login Screen
    Close Flight Application
