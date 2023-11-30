import { Given, When, And, Then } from "cypress-cucumber-preprocessor/steps";
import homePage from "../page/homePage";

Given("El usuario abre el sitio cadastro de usuarios", () => {
  homePage.elements.urlSite();
});

When("El usuario ingresa E-mail {string}", (email) => {
  homePage.typeEmail(email);
});

When("El usuario ingresa Nome {string}", (username) => {
  homePage.typeUsername(username);
});

And("El usuario ingresa una Senha {string}", (password) => {
  homePage.typePassword(password);
});

And("El usuario hace click en el boton Cadastrar", () => {
  homePage.clickLogin();
});

And("El usuario ingresa E-mail {string}", (email) => {
  homePage.typeEmail(email);
});

And("El usuario deber ver el error {string}", (error) => {
  cy.get(".error").should("contain", error);
});

Then("El usuario deber ver el error {string}", (error) => {
  cy.get(".error").should("contain", error);
});

Then("El usuario no deberia ver la tabla de usuarios", () => {
  cy.get(".table-title").should("not.exist");
});
