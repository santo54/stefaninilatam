class homePage {
  elements = {
    mainpage: () => cy.get(".page-info"),
    usernamesInput: () => cy.get("#name"),
    useremail: () => cy.get("#email"),
    userpassword: () => cy.get("#password"),
    tableUser: () => cy.get(".table-title"),
    errorMsg: () => cy.get(".error"),
    loginBtn: () => cy.get("#register"),
    urlSite: () =>
      cy.visit(
        "https://cadastro-de-usuarios.s3.us-east-1.amazonaws.com/index.html"
      ),
  };

  typeUsername(username) {
    this.elements.usernamesInput().type(username);
  }
  typeEmail(email) {
    this.elements.useremail().type(email);
  }
  typePassword(password) {
    this.elements.userpassword().type(password);
  }

  clickLogin() {
    this.elements.loginBtn().click();
  }
}

module.exports = new homePage();
