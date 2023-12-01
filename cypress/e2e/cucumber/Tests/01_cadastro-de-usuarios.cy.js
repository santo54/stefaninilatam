import { Given, When, And, Then } from "cypress-cucumber-preprocessor/steps";
import homePage from "../page/homePage";

Given("El usuario ingresa al sitio cadastro de usuarios", () => {
  homePage.elements.urlSite();
});

When("El usuario accede al sitio", () => {
  homePage.elements.mainpage().should("contain", "Cadastro de usuários");
});

And("El usuario deberia ver el campo Nome con valor inicial vacio", () => {
  homePage.elements.usernamesInput().should("be.visible");
});

And("El usuario deberia ver el campo E-mail con valor inicial vacio", () => {
  homePage.elements.useremail().should("be.visible");
});

And("El usuario deberia ver el campo Senha con valor inicial vacio", () => {
  homePage.elements.userpassword().should("be.visible");
});

And("El usuario deberia ver el boton Cadastrar", () => {
  homePage.elements.loginBtn().should("be.visible");
});

Then("El usuario no deberia ver la tabla de usuarios", () => {
  homePage.elements.tableUser().should("not.exist");
});
