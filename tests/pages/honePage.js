const { I } = inject();

module.exports = {

  filds:{
    email: '#email',
    senha: '#passwd'
  },
  
  
  button:{
    SignIn: 'Sign in',
    logar: '#SubmitLogin'
  },

  abrirAplicacao(){
    I.amOnPage('/')
  },

  acessandoLogin(){
    I.click(this.button.SignIn)
  },

  verificacaoTextoPagina(texto){
    //I.wait(1)  
    I.see(texto)
 },

 preencherFormLogin(email, senha){
    I.fillField(this.filds.email, email)
    I.fillField(this.filds.senha, senha)
 },

 logar(){
  I.click(this.button.logar)
 }


}
