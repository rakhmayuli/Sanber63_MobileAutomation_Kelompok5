*** Settings ***
Resource            ../base/base.robot
Variables        book-page-locators.yaml

*** Keywords ***
Choose One-way Flight
    Wait Until Element Is Visible            ${one_way_button}
    Click Element                            ${one_way_button}

#choose from City
Choose From City New York
    Click Element                           ${from_city_button}
    # Wait Until Element Is Visible           ${city_newYork}
    # Click Element                           ${city_newYork}
    Wait Until Element Is Visible    //android.widget.TextView[@text="New York"]
    Click Text    New York
    
Choose From City Chicago
    Click Element                           ${from_city_button}
    Wait Until Element Is Visible           ${city_chichago}
    Click Element                           ${city_chichago}

Choose From City Toronto
    Click Element                           ${from_city_button}
    Wait Until Element Is Visible           ${city_toronto}
    Click Element                           ${city_toronto}

#Choose to City
Choose to City London 
    Click Element                            ${to_city_button}
    Wait Until Element Is Visible            ${city_london}
    Click Element                            ${city_london}

Choose to City Paris
    Click Element                           ${to_city_button}
    Wait Until Element Is Visible           ${city_paris}
    Click Element                           ${city_paris}

Choose to City Ottawa
    Click Element                           ${to_city_button}
    Wait Until Element Is Visible           ${city_ottawa}
    Click Element                           ${city_ottawa}

#Choose Class
Choose Class Economy
    Click Element                           ${class_button}
    # Wait Until Element Is Visible           ${class_economy}
    # Click Element                           ${class_economy}
    Wait Until Element Is Visible    //android.widget.TextView[@text="Economy"]
    Click Text    Economy

Choose Class First
    Click Element                           ${class_button}
    Wait Until Element Is Visible           ${class_first}
    Click Element                           ${class_first}

Choose Class Business
    Click Element                           ${class_button}
    Wait Until Element Is Visible           ${class_business}
    Click Element                           ${class_business}

Choose Start Date 
    Click Element                           ${start_date_button}
    Wait Until Element Is Visible           ${start_date_picker}
    Click Element                           ${start_date_picker}
    Click Element                           ${date_buttonOk}

Choose End Date 
    Click Element                           ${end_date_button}
    Wait Until Element Is Visible           ${end_date_picker}
    Click Element                           ${end_date_picker}
    Click Element                           ${date_buttonOk}

Choose Flight Only
    Wait Until Element Is Visible            ${flightOnly_radioButton}
    Click Element                            ${flightOnly_radioButton}

Choose Flight and Hotel 
    Wait Until Element Is Visible            ${flightHotel_radioButton}
    Click Element                            ${flightHotel_radioButton}

Choose Checkbox Day
    Wait Until Element Is Visible            ${day_checkbox}
    Click Element                            ${day_checkbox}

click Submit Book
    Click Element                            ${submitBook_button}

Choose Price
    Wait Until Element Is Visible            ${choose_price_button}
    Click Element                            ${choose_price_button}

Click Price Confirm
    Wait Until Element Is Visible            ${priceConfirm_button}
    Click Element                            ${priceConfirm_button}

Book Flight Successfully 
    Wait Until Element Is Visible            ${successBooked}