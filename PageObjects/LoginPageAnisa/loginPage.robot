*** Settings ***
Resource            ../base/base.robot
Variables            locator-login.yaml
Variables            test-data.yaml
*** Keywords ***
# Klik tombol Sign In di halaman utama
Click Sign In on Home Page
    Click Element    ${home_signin_button}
    Sleep    2s

# Input Username
Input Username
    [Arguments]    ${username}
    Input Text    ${username_field}    ${username}

# Input Password
Input Password
    [Arguments]    ${password}
    Input Text    ${password_field}    ${password}

# Klik tombol Sign In
Click Sign In Button
    Click Element    ${button_signin}

*** Test Cases ***
# Test Case 1: Sign In Berhasil
Sign In Dengan Username dan Password Benar
    Open Flight Android Application
    Click Sign In on Home Page
    Input Username    ${valid_username}
    Input Password    ${valid_password}
    Click Sign In Button
    Sleep    3s
    Close Flight Application

# Test Case 2: Sign In Gagal - Username Benar, Password Salah
Sign In Dengan Username Benar dan Password Salah
    Open Flight Android Application
    Click Sign In on Home Page
    Input Username    ${valid_username}
    Input Password    ${invalid_password}
    Click Sign In Button
    Sleep    3s
    Close Flight Application

# Test Case 3: Sign In Gagal - Username Salah, Password Benar
Sign In Dengan Username Salah dan Password Benar
    Open Flight Android Application
    Click Sign In on Home Page
    Input Username    ${invalid_username}
    Input Password    ${valid_password}
    Click Sign In Button
    Sleep    3s
    Close Flight Application

# Test Case 4: Sign In Gagal - Username dan Password Salah
Sign In Dengan Username Salah dan Password Salah
    Open Flight Android Application
    Click Sign In on Home Page
    Input Username    ${invalid_username}
    Input Password    ${invalid_password}
    Click Sign In Button
    Sleep    3s
    Close Flight Application

# Test Case 5: Sign In Gagal - Username Kosong
Sign In Dengan Username Kosong
    Open Flight Android Application
    Click Sign In on Home Page
    Input Username    ${empty}
    Input Password    ${valid_password}
    Click Sign In Button
    Sleep    3s
    Close Flight Application

# Test Case 6: Sign In Gagal - Password Kosong
Sign In Dengan Password Kosong
    Open Flight Android Application
    Click Sign In on Home Page
    Input Username    ${valid_username}
    Input Password    ${empty}
    Click Sign In Button
    Sleep    3s
    Close Flight Application

# Test Case 7: Sign In Gagal - Username dan Password Kosong
Sign In Dengan Username dan Password Kosong
    Open Flight Android Application
    Click Sign In on Home Page
    Input Username    ${empty}
    Input Password    ${empty}
    Click Sign In Button
    Sleep    3s
    Close Flight Application



