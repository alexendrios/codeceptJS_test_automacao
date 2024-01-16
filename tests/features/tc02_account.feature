# language: en
# charset: UTF-8
# Supported severity values: blocker, critical, normal, minor, trivial. ex.: @severity=critical
# Every Feature or Scenario can be annotated by following tags: @flaky, @muted, @known

Feature: Cadastro de usuário
    Eu sendo um usário 
    Gostaria de realizar
    o cadastro na aplicação

Scenario: TC06 - Criação de usuário - email vazio
    Given acesso a aplicação
    When ao clicar no botão - Sign in -
    And ao informar o email ""
    And click no botão - create an account -
    Then eu visualizo a seguinte mensagem "Invalid email address."

Scenario: TC07 - Criação de usuário - email imválido
    Given acesso a aplicação
    When ao clicar no botão - Sign in -
    And ao informar o email "ale1.uorak,com"
    And click no botão - create an account -
    Then eu visualizo a seguinte mensagem "Invalid email address."

Scenario: TC08 - Criação de usuário - email válido
    Given acesso a aplicação
    When ao clicar no botão - Sign in -
    And ao informar o email "ale1@uorak.com"
    And click no botão - create an account -
    Then eu visualizo a seguinte mensagem "YOUR PERSONAL INFORMATION"

Scenario: TC09 - Criação de usuário - Informações Em branco
    Given acesso a aplicação
    When ao clicar no botão - Sign in -
    And ao informar o email "ale1@uorak.com"
    And click no botão - create an account -
    And ao  informar as informações: title "" fist name "" Last name "" password "" 
    And data de nascimento dia "" mês "" ano ""
    And aceito os temrmos: - Sign up for our newsletter! - "" e - Receive special offers from our partners!- ""
    And clico no botão - Register -
    Then eu visualizo a seguinte mensagem "There are 3 errors"

Scenario: TC10 - Criação de usuário - Preenchendo somente o campo - fist name -
    Given acesso a aplicação
    When ao clicar no botão - Sign in -
    And ao informar o email "ale1@uorak.com"
    And click no botão - create an account -
    And ao  informar as informações: title "" fist name "Alexandre" Last name "" password "" 
    And data de nascimento dia "" mês "" ano ""
    And aceito os temrmos: - Sign up for our newsletter! - "" e - Receive special offers from our partners!- ""
    And clico no botão - Register -
    Then eu visualizo a seguinte mensagem "There are 2 errors"

Scenario: TC11 - Criação de usuário - Preenchendo somente os campos - fist name e last name -
    Given acesso a aplicação
    When ao clicar no botão - Sign in -
    And ao informar o email "ale1@uorak.com"
    And click no botão - create an account -
    And ao  informar as informações: title "" fist name "Alexandre" Last name "Santos" password "" 
    And data de nascimento dia "" mês "" ano ""
    And aceito os temrmos: - Sign up for our newsletter! - "" e - Receive special offers from our partners!- ""
    And clico no botão - Register -
    Then eu visualizo a seguinte mensagem "passwd is required"

Scenario: TC12 - Criação de usuário - indicando o tílulo saudação - Mr.
    Given acesso a aplicação
    When ao clicar no botão - Sign in -
    And ao informar o email "ale1@uorak.com"
    And click no botão - create an account -
    And ao  informar as informações: title "Mr." fist name "Alexandre" Last name "Santos" password "" 
    And data de nascimento dia "" mês "" ano ""
    And aceito os temrmos: - Sign up for our newsletter! - "" e - Receive special offers from our partners!- ""
    And clico no botão - Register -
    Then eu visualizo a seguinte mensagem "passwd is required"

 Scenario: TC13 - Criação de usuário - indicando o tílulo saudação - Mrs.
    Given acesso a aplicação
    When ao clicar no botão - Sign in -
    And ao informar o email "ale1@uorak.com"
    And click no botão - create an account -
    And ao  informar as informações: title "Mrs." fist name "Alexandre" Last name "Santos" password "" 
    And data de nascimento dia "" mês "" ano ""
    And aceito os temrmos: - Sign up for our newsletter! - "" e - Receive special offers from our partners!- ""
    And clico no botão - Register -
    Then eu visualizo a seguinte mensagem "passwd is required"

 Scenario: TC14 - Criação de usuário - Data nascimento inválida
    Given acesso a aplicação
    When ao clicar no botão - Sign in -
    And ao informar o email "ale1@uorak.com"
    And click no botão - create an account -
    And ao  informar as informações: title "Mrs." fist name "Alexandre" Last name "Santos" password "" 
    And data de nascimento dia "30" mês "13" ano "1400"
    And aceito os temrmos: - Sign up for our newsletter! - "" e - Receive special offers from our partners!- ""
    And clico no botão - Register -
    Then eu visualizo a seguinte mensagem "passwd is required"

 Scenario: TC15 - Criação de usuário -sucesso
    Given acesso a aplicação
    When ao clicar no botão - Sign in -
    And ao informar o email "gerado_sistema"
    And click no botão - create an account -
    And ao  informar as informações: title "Mr" fist name "gerado_sistema" Last name "gerado_sistema" password "gerado_sistema" 
    And data de nascimento dia "14" mês "11" ano "1990"
    And aceito os temrmos: - Sign up for our newsletter! - "SIM" e - Receive special offers from our partners!- "SIM"
    And clico no botão - Register -
    Then eu visualizo a seguinte mensagem "Your account has been created."