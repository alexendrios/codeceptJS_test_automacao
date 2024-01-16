# language: en
# charset: UTF-8
# Supported severity values: blocker, critical, normal, minor, trivial. ex.: @severity=critical
# Every Feature or Scenario can be annotated by following tags: @flaky, @muted, @known


Feature: Login
  Eu como usuário gostaria de
  logar na aplicação e assim
  realizar compras de maneira online
  
 
  Scenario: TC01 - Logar na aplicação - Email e senha em Branco
     Given acesso a aplicação
     When ao clicar no botão - Sign in -
     And visualizo o seguinte texto "AUTHENTICATION"
     And  ao informar o usuário "" e senha ""
     And  ap clicar no botão Sign in
     Then eu visualizo a seguinte mensagem "There is 1 error"

 Scenario: TC02 - Logar na aplicação - Email preenchico e senha em Branco
     Given acesso a aplicação
     When ao clicar no botão - Sign in -
     And visualizo o seguinte texto "AUTHENTICATION"
     And  ao informar o usuário "ale@uorak.com" e senha ""
     And  ap clicar no botão Sign in
     Then eu visualizo a seguinte mensagem "There is 1 error"    

 Scenario: TC03 - Logar na aplicação - Senha inválida
     Given acesso a aplicação
     When ao clicar no botão - Sign in -
     And visualizo o seguinte texto "AUTHENTICATION"
     And  ao informar o usuário "ale@uorak.com" e senha "futuro09"
     And  ap clicar no botão Sign in
     Then eu visualizo a seguinte mensagem "There is 1 error"    

  Scenario: TC04 - Logar na aplicação - Usuário não cadastrado na aplicação
     Given acesso a aplicação
     When ao clicar no botão - Sign in -
     And visualizo o seguinte texto "AUTHENTICATION"
     And  ao informar o usuário "ale1@uorak.com" e senha "12345678"
     And  ap clicar no botão Sign in
     Then eu visualizo a seguinte mensagem "There is 1 error"   

  Scenario: TC05 - Logar na aplicação - Login com sucesso
     Given acesso a aplicação
     When ao clicar no botão - Sign in -
     And visualizo o seguinte texto "AUTHENTICATION"
     And  ao informar o usuário "ale@uorak.com" e senha "12345678"
     And  ap clicar no botão Sign in
     Then eu visualizo a seguinte mensagem "MY ACCOUNT"  