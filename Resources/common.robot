*** Settings ***
Library    SeleniumLibrary
Library    Dialogs



*** Variables ***
${BROWSER}    chrome



*** Keywords ***
Begin web test
    Open Browser     about:blank    ${BROWSER}
    Maximize Browser Window

End Web Test
    Close Browser
