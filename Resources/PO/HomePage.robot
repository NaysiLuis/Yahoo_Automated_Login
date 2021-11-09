*** Settings ***
Documentation    This is basic info about the whole suite
Library    SeleniumLibrary



*** Variables ***
${URL}    	 https://finance.yahoo.com/
${HOME_TITLE}    Finance Home



*** Keywords ***
Load Website
    Go to     ${URL}

Verify Page Loaded
    Wait Until Page Contains      ${HOME_TITLE}     timeout=5s