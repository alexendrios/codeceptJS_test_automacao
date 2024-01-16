const Helper = require('codeceptjs').Helper;


class hooks extends Helper {
   
  // before/after hooks
  _beforeSuite() {
     console.log("\x1b[34m\n---------------------------Suíte de Testes--------------------------------\x1b[0m\n");
     console.log("\x1b[34m\t\tExecutando os Cenários:\x1b[0m\n")
  }

 _afterSuite() {
    console.log("\x1b[34m\n---------------------------Suíte Finalizado-------------------------------\x1b[0m\n");
  }

 

}

module.exports = hooks;