*** Settings ***
Resource    ../resources/resourcesWeb.robot
Resource    ../resources/userweb.robot
Test Setup    Abrir Navegador 
Test Teardown    Fechar Navegador


*** Test Cases ***
CT 01-Realizar login administrativo 
    Realizar Login administrativo
    #Verificar se o login foi bem-sucedido

CT 02-Criar novo usuário web
    Realizar novo cadastro de usuário
    #Verificar se novo cadastro de usuário foi realizado com sucesso

# CT 03-Realizar login com novo usuário
#     Gerar Massa de Dados
#     Realizar login com o usuário cadastrado
#     #Passo 12 - Verificar se o login foi realizado com sucesso
#     Sleep    5
#     Capture Page Screenshot
#     Sleep     3
#     Log    Login realizado com sucesso!
    
CT 04-Cadastrar nova diretoria 
    Realizar login administrativo
    Cadastrar Diretoria
    #Verificar se o cadastro de diretoria foi realizado com sucesso

CT 05-Cadastrar novo Centro de Custo
    Realizar login administrativo
    Cadastrar novo centro de custo
    #Verificar se o cadastro de centro custo foi realizado com sucesso