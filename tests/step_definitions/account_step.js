const { accountPage } = inject();

When('ao informar o email {string}', (email) => {
    accountPage.preecherEmail(email)
});

When('click no botão - create an account -', () => {
    accountPage.criarAccount()
});


When('ao  informar as informações: title {string} fist name {string} Last name {string} password {string}', (title,fistname, lastname, password) => {
    accountPage.preencherFormCadastro(title,fistname, lastname, password)
});
  
When('data de nascimento dia {string} mês {string} ano {string}', (day, month,year) => {
    accountPage.preencherDataNascimento(day, month,year)
});
  
When('aceito os temrmos: - Sign up for our newsletter! - {string} e - Receive special offers from our partners!- {string}', (signUp, receiver) => {
    accountPage.aceitarReceberInformacoes(signUp, receiver)
});
  
When('clico no botão - Register -', () => {
    accountPage.register()
});