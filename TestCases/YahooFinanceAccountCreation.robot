*** Settings ***

Library     SeleniumLibrary
Resource    ../Resources/YahooFinanceAccountCreationKeywords.robot
Variables   ../Data/YahooFinanceAccountCreationData.py

*** Test Cases ***

TC_YahooFinanceAccountCreation
    OPEN MY BROWSER     ${DATA_BROWSER_URL}      ${DATA_BROWSER_NAME}
    CLICK SIGN IN
    CLICK SIGN UP
    ENTER PERSONAL DETAILS  ${DATA_FIRST_NAME}   ${DATA_LAST_NAME}    ${DATA_USER_ID}
    ...     ${DATA_PASS_WORD}    ${DATA_MONTH_BIRTH}   ${DATA_DAY_BIRTH}
    ...     ${DATA_YEAR_BIRTH}
    CLICK NEXT
    ENTER PHONE NUMBER  ${DATA_PHONE_NUM}
    CLICK CODE BY TEXT
    CLOSE MY BROWSER
