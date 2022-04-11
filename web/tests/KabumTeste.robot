***Settings***
Documentation       
Library         SeleniumLibrary
Suite Setup     Open Session
Suite Teardown  Close Session

    
***Keywords***

Open Session
    Open Browser    about:blank        chrome   

Close Session
    Close Browser 

Login
    [Arguments]     ${username}     ${pass}

        Set Selenium Speed  0.3

        Go To   https://www.kabum.com.br/login

        Input Text   id:inputUsuarioLogin      ${username}
        Input Text   id:inputSenhaLogin      ${pass}

        Click Element   id:onetrust-accept-btn-handler

        Click Element   id:botaoLogin

Search 
    [Arguments]     ${product}

    Set Selenium Speed  0.3

    Go To   https://www.kabum.com.br/

    Input Text  id:input-busca  ${product}
    
    Press Keys    class:sc-kBjqcv  ENTER

Add
    
    Set Selenium Speed  1.5

    Go To   https://www.kabum.com.br/


    Click Element   class:sc-hQRsPl 
    
    Click Element   class:sc-fWIMVQ

    Click Element   class:sc-gGnURB


***Test Cases***

Invalid Password 
    Login   TesteInválido  123456ab
    Wait Until Page Contains    Estamos com problemas, tente mais tarde


Search product
    Search   Iphone
    Wait Until Page Contains    IPhone


Add Product        
    Add  
    wait Until Page Contains   RESUMO
