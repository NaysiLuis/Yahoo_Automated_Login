*** Settings ***
Documentation    This is E2E Yahoo Finance Signin test
Resource         ../Resources/common.robot
Resource         ../Resources/YahooSite.robot
Test Setup       Begin Web Test
Test Teardown    End Web Test


*** Test Cases ***
Sign in Yahoo Finance with valid credentials
    [Documentation]    This is test of Yahoo Finance sign in
    [Tags]    smoke
    Sign In on Yahoo Home Page
    Email Validation
    Create User
