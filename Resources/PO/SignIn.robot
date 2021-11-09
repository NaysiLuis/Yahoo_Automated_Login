*** Settings ***
Documentation    This is basic info about the whole suite
Library    SeleniumLibrary


*** Variables ***
${EMAIL}         bohorseman1991
${F_NAME}        Bojack
${L_NAME}        Horseman
${PSSW}          Pxnxm@2021
${PHONE}         716-215-9366
${L_NAME_BOX}    usernamereg-lastName
${F_NAME_BOX}    usernamereg-firstName
${PSSW_BOX}      usernamereg-password
${EMAIL_BOX}     usernamereg-yid
${MOBILE_BOX}    usernamereg-phone
${MM_BOX}        usernamereg-month
${D_BOX}         usernamereg-day
${Y_BOX}         usernamereg-year
${GENDER_BOX}    usernamereg-freeformGender



*** Keywords ***
Sign In First Validation
    Wait Until Element Is Enabled    login-username     timeout=5s
    Input Text                       login-username     ${EMAIL}

Click Continue Button
    Click Element    createacc

Forced email address
    Click Link       usernamereg-altreg

Fill Contact info
    Validate Text Field And Input Value   ${F_NAME_BOX}    ${F_NAME}
    Validate Text Field And Input Value    ${L_NAME_BOX}    ${L_NAME}
    Validate Text Field And Input Value    ${EMAIL_BOX}     ${EMAIL}
    Validate Text Field And Input Value    ${PSSW_BOX}      ${PSSW}
    Validate Text Field And Input Value    ${MOBILE_BOX}    ${PHONE}
    Select From List By Value              ${MM_BOX}        12
    Validate Text Field And Input Value    ${D_BOX}         3
    Validate Text Field And Input Value    ${Y_BOX}         1991
    Validate Text Field And Input Value    ${GENDER_BOX}    F

Validate Text Field And Input Value
    [Arguments]    ${field}    ${value}
    Wait Until Element Is Enabled     ${field}        timeout=5s
    Input Text                        ${field}        ${value}

Click Create User
    Wait Until Element Is Enabled    reg-submit-button
    Click Button                     reg-submit-button
    Wait Until Page Contains         Security check      timeout=15s
