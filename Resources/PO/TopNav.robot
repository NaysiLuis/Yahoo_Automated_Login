*** Settings ***
Documentation    This is basic info about the whole suite
Library          SeleniumLibrary



*** Variables ***



*** Keywords ***
Click Sign In Button
    Click Element    header-profile-menu
    Wait Until Page Contains     Sign in to Yahoo    timeout=10s