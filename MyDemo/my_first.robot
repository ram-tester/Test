*** Settings ***
Library     SeleniumLibrary
Suite Setup      Open Browser    https://www.google.co.in/    chrome
Suite Teardown      Close All Browsers 
 

*** Test Cases ***
tc1
    Log    hello jai
tc2
     
    
    Set Browser Implicit Wait    3
    Input Text    name=q    robotframework
    Press Keys    name=q    ENTER  
    # Click Button    name=btnK    
    Sleep    5   
    Log    test completed 
        
tc3
    [Documentation]    This is login demo
    Open Browser    ${url}    chrome
    Set Browser Implicit Wait    5
    Loginkw
    Click Element    id=welcome    
    Click Element    link=Logout   
  
    Log        Testcompleted    
    Log        This was executed by %{username} on %{os}
    
*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/
@{Logindata}        Admin    admin123
&{logininfo}        username=Admin    password=admin123

*** Keywords ***
Loginkw
    Input Text    id=txtUsername        ${Logindata}[0] 
    Input Text    id=txtPassword        ${logininfo}[password]
    Click Element    id=btnLogin
    

        
   