import { Given, When, And, Then } from "cypress-cucumber-preprocessor/steps";
import homePage from "../page/homePage";

Given("El usuario abre el sitio cadastro de usuarios", () => {
  homePage.elements.urlSite();
});

When("El usuario ingresa los datos en el formulario", (table) => {
  table.hashes().forEach((row) => {
    homePage.typeUsername(row.Nome);
    homePage.typeEmail(row.Email);
    homePage.typePassword(row.Senha);
    homePage.clickLogin();
  });
});

And("El usuario debe ver la opcion de Excluir los datos ingresados", () => {
  cy.get("table > tr")
    .should("have.length.greaterThan", 0)
    .each(($filaUsuario) => {
      cy.wrap($filaUsuario).find('[id^="removeUser"]').should("be.visible");
    });
});

And(
  "El usuario debe ver a los nuevos usuarios ordenados por identificación, de menor a mayor",
  () => {
    cy.get('[id^="tdUserId"]').then(($identificaciones) => {
      const identificaciones = $identificaciones
        .toArray()
        .map((element) => Number(element.innerText));
      const sortedIdentificaciones = [...identificaciones].sort(
        (a, b) => a - b
      );
      expect(identificaciones).to.deep.equal(sortedIdentificaciones);
    });
  }
);

And("El usuario borra unos de los usuarios clickando en boton Excluir", () => {
  cy.get('[id^="removeUser"]').first().click();
});

Then(
  "El usuario debe ver un formulario con una tabla con los datos del usuario previamente ingresado",
  () => {
    cy.get(".table-title").should("be.visible");
  }
);

Then(
  "El usuario debe ver una tabla con los datos del usuario previamente ingresado y no ver el eliminado",
  () => {
    cy.get("#tdUserId1").should("not.exist");
    cy.get("#tdUserId2").should("have.text", "2");
  }
);
