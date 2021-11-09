*** Settings ***
Resource    ../Resources/PO/HomePage.robot
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/TopNav.robot



*** Keywords ***
Sign In on Yahoo Home Page
    Load Website
    Verify Page Loaded
    Click Sign In Button

Email Validation
    Sign In First Validation
    Click Continue Button

Create User
    Fill Contact info
    Click Create User
