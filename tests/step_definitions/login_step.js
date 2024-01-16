const { homePage } = inject();

Given('acesso a aplicação', () => {
   homePage.abrirAplicacao()
});

When('ao clicar no botão - Sign in -', () => {
   homePage.acessandoLogin()
});

When('visualizo o seguinte texto {string}', (argumento) => {
  homePage.verificacaoTextoPagina(argumento)
});

When('ao informar o usuário {string} e senha {string}', (email, senha) => {
  homePage.preencherFormLogin(email, senha)
});

When('ap clicar no botão Sign in', () => {
  homePage.logar()
});

Then('eu visualizo a seguinte mensagem {string}', (argumento) => {
  homePage.verificacaoTextoPagina(argumento)
});