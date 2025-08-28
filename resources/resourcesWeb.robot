*** Settings ***

Library           SeleniumLibrary
Library    FakerLibrary    locale=pt_BR
Library    String
Library    BuiltIn

*** Keywords ***
Gerar CPF Aleatorio Numerico
    ${cpf}=    Generate Random String    11    [NUMBERS]
    RETURN    ${cpf}
    Set Suite Variable    ${dadoCpf}    ${cpf}
Gerar Massa de Dados
    [Documentation]    Gera dados aleatórios usando a biblioteca Faker e armazena nas variáveis do tipo dados.
    ${nome_completo}    FakerLibrary.Name
    ${email_gerado}     FakerLibrary.Email
    Set Global Variable    ${email_gerado}
    ${primeiro}=            FakerLibrary.First Name
    ${ultimo}=              FakerLibrary.Last Name
    ${nome_completoC}    Set Variable    ${primeiro} ${ultimo}  
    ${Diretoria}        FakerLibrary.Company           
    # ${senha_gerada}     Get Email # Ou outra palavra-chave para senha, como password()
   
    # Armazena os valores gerados nas variáveis que você quer usar
    # O comando Set Suite Variable armazena a variável para ser usada em todos os testes do suite
    Set Suite Variable    ${dados.nome}        ${nome_completo}
    Set Suite Variable    ${dados.email}       ${email_gerado}
    Set Suite Variable    ${dados.perfil}      ADMIN
    #Set Suite Variable    ${dados.cpf}         ${cpf}
    Set Suite Variable    ${dados.senhauser}   1234@Test
    Set Suite Variable    ${dados.snhconf}     1234@Test
    Set Suite Variable    ${dados.first}       ${primeiro}
    Set Suite Variable    ${dados.last}        ${ultimo}
    Set Suite Variable    ${nomeDiretoria}    ${Diretoria}
    Set Suite Variable    ${nomeCompletoC}    ${nome_completoC}
    Set Global Variable    ${email_usergerado}    ${email_gerado}
# Gerar Nome Completo
#     ${first}=    FakerLibrary.First Name
#     ${last}=     FakerLibrary.Last Name
#     ${nome_completoC}=    Catenate    ${first}    ${last}
#     Set Suite Variable    ${nome_completoC}
#     Set Suite Variable    ${dados.first}       ${first}
#     Set Suite Variable    ${dados.last}        ${last}
#     RETURN    ${nome_completoC}
#     RETURN    ${first}
#     RETURN    ${last}


  

*** Variables ***
${BaseUrl}                 https://the-originals.qacoders.dev.br/login
${Urlchips}                https://chips.qacoders.dev.br/login
${Urlsupernatural}         https://supernatural.qacoders.dev.br/login
${Urlautomação}            https://automacao.qacoders.dev.br/login
${Urlsuits}                https://suits.qacoders.dev.br/login
${Urlshogun}               https://shogun.qacoders.dev.br/login
${emailInput}              id=email   
${emailsupernatural}       vitor-gabrielnovaes@example.com
${emailValido}             sysadmin@qacoders.com
${emailchips}              clisbteste@yahoo.com.br
${meuEmail}                juliana_chaves@outlook.com
${meupassword}             1234@Test
${senhaInput}              id=password 
${senhaValida}             1234@Test
${botaoInput}              id=login
${botaoLogout}             html body.__className_a8fb8e.css-1xq1m86 nav.css-15kz734 button.css-1nvbq2d
${botaoCadastro}           //*[@id="Cadastros"]
${cadastroCentrocusto}     //*[@id="Centro de Custo"]
${botaonovoCentrocusto}    //*[@id="Novo Cadastro"]
${novaCentrocusto}         //*[@id="costCentername"] 
${salvarnovoCentrocusto}   //*[@id="save"]
${msg de sucesso}          .MuiAlert-messagege
${pesquisarDir}            //*[@id=":r2:"]


${cadastroDiretoria}   //*[@id="Diretorias"]
${btnNovoCadastro}     //*[@id="Novo Cadastro"]
${btnBoardname}        //*[@id="boardName"]
${salvarDiretoria}     //*[@id="save"]    
${msgErro}             /html/body/div/div/div[2]/div/form/div[1]/div[2]

  

${botaoUsuario}      //*[@id="Usuários"]
${Email}             //*[@id="mail"]
${nomeCompleto}      //*[@id="fullName"]
${PefilAcesso}       //*[@id="accessProfile"]
${CPF}               //*[@id="cpf"]
${senhauser}         //*[@id="password"]
${senhaconfuser}     //*[@id="confirmPassword"]
${botaoSalvarNovo}   //*[@id="save"]

${dados.nome}             
${dados.email}
${dados.perfil}      ADMIN
${dados.cpf}         
${dados.senhauser}   1234@Test
${dados.snhconf}     1234@Test

${msgSucessoUser}    //*[@id="Novo Cadastro"]