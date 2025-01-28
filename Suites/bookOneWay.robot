*** Settings ***
Resource                ../PageObjects/base/base.robot
Resource                ../PageObjects/BookPage/bookPage.robot

Test Setup       Run Keywords
...             Open Flight Android Application
...             AND    Click Sign In Button On Home Screen
...             AND    Login User
...             AND     Click Sign In Button On Login Screen
...             AND    Verify Successfullly Login
Test Teardown    Close Flight Application

*** Test Cases ***

Positive Case One Way: from city Chicago -to city Paris -class First - Flight and Hotel - Without checkbox Day
    Click Book Button On Home Screen
    Choose One-way Flight
    Choose From City Chicago
    Choose to City Paris 
    Choose Class First
    Choose Start Date
    Choose End Date
    Choose Flight and Hotel
    click Submit Book
    Choose Price
    Click Price Confirm
    Book Flight Successfully

Positive Case One Way: from city Toronto -to city Ottawa -class economy - Flight and Hotel - With checkbox Day
    Click Book Button On Home Screen
    Choose One-way Flight
    Choose From City Toronto
    Choose to City Ottawa 
    Choose Class Economy
    Choose Start Date
    Choose End Date
    Choose Flight and Hotel
    Choose Checkbox Day
    click Submit Book
    Choose Price
    Click Price Confirm
    Book Flight Successfully

Postive Case One Way: from city New York -to city Ottawa -class Business - Flight only - With checkbox Day
    Click Book Button On Home Screen
    Choose One-way Flight
    Choose From City New York
    Choose to City Ottawa 
    Choose Class Business
    Choose Start Date
    Choose End Date
    Choose Flight Only
    Choose Checkbox Day
    click Submit Book
    Choose Price
    Click Price Confirm
    Book Flight Successfully

Positive Case One Way: from city Chichago -to city London -class first - Flight only - Without checkbox Day
    Click Book Button On Home Screen
    Choose One-way Flight
    Choose From City Chicago
    Choose to City London 
    Choose Class First
    Choose Start Date
    Choose End Date
    Choose Flight Only
    click Submit Book
    Choose Price
    Click Price Confirm
    Book Flight Successfully

Negative Case: Booking without choose city, flight class, date, dan price 
    Click Book Button On Home Screen
    Choose One-way Flight
    click Submit Book
    Click Price Confirm
    Book Flight Successfully