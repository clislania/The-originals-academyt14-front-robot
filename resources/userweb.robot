*** Settings ***
Resource       ../resources/resourcesWeb.robot
Library    SeleniumLibrary
Library    FakerLibrary    locale=pt_BR


*** Keywords ***

Abrir Navegador
    #Open Browser    browser=chrome  
    Open Browser    https://shogun.qacoders.dev.br/login    chrome
    Set Selenium Implicit Wait    3
    Maximize Browser Window
    #Go To    url=${Urlshogun}

Fechar Navegador
    Close Browser
Passo 1 - Acessar a pagina de login
    #Open Browser    browser=firefox
    Go To    url=${Urlchips}

Realizar Login administrativo
    wait Until Element Is Visible    ${emailInput}
    Input Text                       ${emailInput}    ${emailValido}  
    Sleep    3
    Wait Until Element Is Visible    ${senhaInput}
    Input Text                       ${senhaInput}    ${senhaValida}
    Sleep    3
    Wait Until Element Is Visible    ${botaoInput}
    Click Button                     ${botaoInput}
    Sleep    3
Verificar se o login foi bem-sucedido
    Wait Until Page Contains Element    ${botaoLogout}
    Sleep    3
    Element Should Be Visible           ${botaoLogout}
    Log    Login realizado com sucesso!

Realizar novo cadastro de usuário
    Realizar Login administrativo
    Sleep    5
    Wait Until Element Is Visible    ${botaoCadastro}
    Click Element    ${botaoCadastro}
    Sleep    3
    Wait Until Element Is Visible    ${botaoUsuario}
    Click Element    ${botaoUsuario}
    Sleep    3
    Wait Until Element Is Visible    ${btnNovoCadastro}
    Click Element    ${btnNovoCadastro}
    Sleep    3
    Gerar Massa de Dados
    ${dados.cpf}=    Gerar CPF Aleatorio Numerico 
    Input Text    ${nomeCompleto}    ${nomeCompletoC} 
    Input Text    ${Email}    ${dados.email}
    Input Text    ${PefilAcesso}    ${dados.perfil}
    Input Text    ${CPF}    ${dados.cpf}
    Input Text    ${senhauser}    ${dados.senhauser}
    Input Text    ${senhaconfuser}    ${dados.senhauser}    ${botaoSalvarNovo}
    Click Button    ${botaoSalvarNovo}
    Sleep    3

Verificar se novo cadastro de usuário foi realizado com sucesso
    Wait Until Page Contains Element    ${msgSucessoUser}           
    Element Should Be Visible           ${msgSucessoUser}
    Sleep    5
    Capture Page Screenshot
    Sleep     3
    Log    Cadastro realizado com sucesso!

Realizar login com o usuário cadastrado
#Tentativa de logar com o usuário gerado
    Sleep    3
    Wait Until Element Is Visible    ${emailInput}       
    Input Text                       ${emailInput}    ${email_usergerado}
    Sleep    3   
    Wait Until Element Is Visible    ${senhaInput}    
    Input Text                       ${senhaInput}    ${dados.senhauser}
    Sleep    3
    Wait Until Element Is Visible    ${botaoInput}                     
    Click Button                     ${botaoInput}
    Sleep    5 
    Capture Page Screenshot
    # Wait Until Page Contains Element    ${botaoLogout}
    

Cadastrar Diretoria
    Wait Until Element Is Visible    ${botaoCadastro}  5s
    Click Element    ${botaoCadastro}
    Wait Until Element Is Visible    ${cadastroDiretoria}   5s
    Click Element    ${cadastroDiretoria}
    Wait Until Element Is Visible    ${btnNovoCadastro} 
    Click Element    ${btnNovoCadastro}    
    Wait Until Element Is Visible    ${btnBoardname}
    Gerar Massa de Dados
    Input Text    ${btnBoardname}    ${dados.first}  
    Sleep    3
    Click Button    ${salvarDiretoria}   
    Sleep    3 
    Capture Page Screenshot
    #Log    Diretoria cadastrada com sucesso!

Verificar se o cadastro de diretoria foi realizado com sucesso
    Wait Until Page Contains Element    ${pesquisarDir}
    Element Should Be Visible           ${pesquisarDir}
    Sleep    5
    Capture Page Screenshot
    Sleep     3
    Log    Cadastro realizado com sucesso!

Cadastrar novo centro de custo
    Wait Until Element Is Visible     ${botaoCadastro}
    Click Element                     ${botaoCadastro}
    Sleep    3   
    Wait Until Page Contains Element    ${cadastroCentrocusto}
    Click Element                       ${cadastroCentrocusto}
    Sleep    3
    Wait Until Page Contains Element    ${botaonovoCentrocusto}
    Click Element                       ${botaonovoCentrocusto}
    Sleep    3
    Wait Until Page Contains Element    ${salvarnovoCentrocusto}
    Click Element                       ${novaCentrocusto}
    Sleep    3
    Wait Until Element Is Visible    ${novaCentrocusto}
    Gerar Massa de Dados
    Input Text    ${novaCentrocusto}    ${dados.last}  
    Sleep    3
    Click Element    //*[@id="Diretoria"]
    Sleep    3
    Click Element    //*[@id="Diretoria"]/option[1]
    Sleep    3
    Click Button     //*[@id="save"]
    Sleep    5
    Capture Page Screenshot
    Sleep     5

Verificar se o cadastro de centro custo foi realizado com sucesso
    Wait Until Page Contains Element    ${//*[@id=":Rcrnnlenla:"]}   
    Sleep   5 
    Element Should Be Visible           ${//*[@id=":Rcrnnlenla:"]}
    Sleep    5
    Capture Page Screenshot
    Sleep     3
    Log    Cadastro realizado com sucesso!
