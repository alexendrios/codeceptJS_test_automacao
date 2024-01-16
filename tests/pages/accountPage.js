const exibir = require('../../utils/util.js')
const pessoa = exibir.gerandoPessoa()

const { I } = inject();

module.exports = {

  filds:{
    email: '#email_create',
    fistMame:'#customer_firstname',
    lastName:'#customer_lastname',
    passWord:'#passwd'
  },

  button:{
    createAccount: "Create an account",
    register: 'Register'
  },

  checkBox:{
    signUp:'#newsletter',
    receiver:'#optin',
  },

  radio:{
    mr: 'Mr.',
    mrs: 'Mrs.',
  },

  selects:{
    day: '#days',
    month: 'months',
    year: '#years'
  },
  
  preecherEmail(email){
    if(email == "gerado_sistema"){
      email =  pessoa[2]
    }
    I.fillField(this.filds.email, email)
  },

  criarAccount(){
   I.click(this.button.createAccount)
  },

  preencherFormCadastro(title, fistname, lastname, password){
    if(title == "Mr."){
      I.checkOption(this.radio.mr) 
    }else if(title == "Mrs."){
      I.checkOption(this.radio.mrs)
    }

    if(fistname == "gerado_sistema"){
        fistname = pessoa[0]
        lastname = pessoa[1]
        password = pessoa[3]
    }
   
    I.fillField(this.filds.fistMame, fistname)
    I.fillField(this.filds.lastName, lastname)
    I.fillField(this.filds.passWord, password)
  },

  preencherDataNascimento(day, month,year){
      I.selectOption(this.selects.day, day)
      I.selectOption(this.selects.month, month)
      I.selectOption(this.selects.year, year)
  },

  aceitarReceberInformacoes(signUp, receiver){
       if(signUp == "SIM"){
        I.checkOption(this.checkBox.signUp)
       }
       if(receiver == "SIM"){
        I.checkOption(this.checkBox.receiver)
       }
  },

  register(){
    I.click(this.button.register)
  }
  
}
