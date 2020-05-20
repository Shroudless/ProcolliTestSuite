*** Variables ***
${Email}     css:#normal_login_email
${Password}    css:#normal_login_password
${Button}    css:.ant-btn  #several butttons use this, so this keyword will be reused
${Profile Details}    css:span.ant-typography
${Dummy Account}    Liu Guanzhong
${Settings Button Tab}    css:.ant-menu-item-selected
${Settings Page}    css:h3.ant-typography
${Projects}    css:.ant-checkbox-group > label:nth-child(1) > .ant-checkbox
${Tender Package Deadline}    css:.ant-checkbox-group > label:nth-child(2) > .ant-checkbox
${Tender Packages}    css:.ant-checkbox-group > label:nth-child(3) > .ant-checkbox
${Bid Submissions}    css:.ant-checkbox-group > label:nth-child(4) > .ant-checkbox
${First Name}    css:#firstName
${Last Name}    css:#lastName
${Company Name}    css:#name
${UEN}    css:#uen
${Postal Code}    css:#postalCode
${Contact Number}    css:#contactNumber
${Website}    css:#website

*** Keywords ***
Login
    Input Text    ${Email}      Karen Kujo
    Input Text    ${Password}    AYAYA
    Click Element    ${Button}

Check Account
    Wait Until Element Is Visible    ${Profile Details}
    Element Text Should Be    ${Profile Details}   ${Dummy Account}

Checking Contact Details
    Textfield Value Should Be    ${First Name}    Ayaya
    Textfield Value Should Be    ${Last Name}    Zen

Checking Company Details
    Textfield Value Should Be    ${Company Name}    Proccoli
    Textfield Value Should Be    ${UEN}    A6666666
    Textfield Value Should Be    ${Postal Code}    600600
    Textfield Value Should Be    ${Contact Number}    9666666
    Textfield Value Should Be    ${Website}    https://proccoli.com

Shift To Settings Tab
    Click Element    ${Settings Button Tab} 
    Wait Until Element Is Visible    ${Settings Page}
    Element Text Should Be    ${Settings Page}    Settings

Turn On All Notifications
    Click Element    ${Projects} 
    Click Element    ${Tender Package Deadline}
    Click Element    ${Tender Packages} 
    Click Element    ${Bid Submissions}
