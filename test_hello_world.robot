***Test Cases ***
Test Hello   
	Log		Hello world! 

*** Test Cases ***
Print Log Message
	[Documentation]    This test logs a Hello World message.
	    Log     Hello World!!!

*** Variables ***
${MAX AMOUNT}      ${5000000}

*** Test Cases ***
Check AMOUNT
    [Documentation]    This test checks if an amount is larger than the max allowed value.
    ${amount}=    Set Variable    1000  # Example amount
    Run Keyword If    ${amount} <= ${MAX AMOUNT}    Log    Amount is within the allowed range.
    ...    ELSE    Fail    Amount exceeds the maximum allowed value.
	Run Keyword If    ${amount} < ${MAX AMOUNT}    Log    Amount is less than the maximum.
    Run Keyword If    ${amount} == ${MAX AMOUNT}    Log    Amount is equal to the maximum.
    Run Keyword If    ${amount} > ${MAX AMOUNT}    Fail    Amount exceeds the maximum allowed value.

*** Test Cases ***
Sum of Two Numbers
    Add Two Numbers    10    34  # Call the custom keyword with arguments

*** Keywords ***
Add Two Numbers
    [Arguments]    ${a}    ${b}  # Define two arguments for the custom keyword
    ${sum}=    Evaluate    ${a} + ${b}  # Add the two numbers
    Log    The sum of ${a} and ${b} is ${sum}  # Log the result
