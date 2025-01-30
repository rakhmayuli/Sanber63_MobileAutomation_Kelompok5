*** Settings ***
Resource            ../base/base.robot
Variables           search-page-locators.yaml

*** Keywords ***

Click SignIn in Home Page
    Wait Until Element Is Visible        ${signIn_homePage_button}
    Click Element                        ${signIn_homePage_button}

Login
    Wait Until Element Is Visible        ${input_username_login}  
    Input Text                           ${input_username_login}    support@ngendigital.com
    Input Password                       ${input_password_login}    abc123

Click SignIn Button On Login Page
    Click Element                        ${login_button}

Click Search Button On Home Page 
    Wait Until Element Is Visible        ${search_button_homePage}
    Click Element                        ${search_button_homePage}

Verify Successfullly Login
    Wait Until Element Is Visible        ${user_homepage}

