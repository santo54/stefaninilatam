import { Given, When, And, Then } from "cypress-cucumber-preprocessor/steps";
import homePage from "../page/homePage";

Given("El usuario abre el sitio cadastro de usuarios", () => {
  homePage.elements.urlSite();
});

When("El usuario entra al sitio", () => {
  homePage.elements.mainpage().should("contain", "Cadastro de usuários");
});

And("El usuario deberia ver el elemento, campo Nome", () => {
  homePage.elements.usernamesInput().should("be.visible");
});

And("El usuario deberia ver el elemento, campo E-mail", () => {
  homePage.elements.useremail().should("be.visible");
});

And("El usuario deberia ver el elemento, campo Senha", () => {
  homePage.elements.userpassword().should("be.visible");
});

And("El usuario deberia ver el elemento, boton Cadastrar", () => {
  homePage.elements.loginBtn().should("be.visible");
});

Then("El usuario no deberia la tabla de usuarios", () => {
  cy.get(".table-title").should("not.exist");
});
