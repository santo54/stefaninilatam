import { Given, When, And, Then } from "cypress-cucumber-preprocessor/steps";
import homePage from "../page/homePage";

Given("El usuario ingresa al sitio cadastro de usuarios", () => {
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

And("El usuario deberia ver el error {string}", (error) => {
  homePage.elements.errorMsg().should("contain", error);
});

Then("El usuario deberia ver el error {string}", (error) => {
  homePage.elements.errorMsg().should("contain", error);
});

Then("El usuario no deberia ver la tabla de usuarios", () => {
  homePage.elements.tableUser().should("not.exist");
});
