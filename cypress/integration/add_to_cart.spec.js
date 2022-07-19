/// <reference types="cypress" />

describe('example to-do app', () => {
  beforeEach(() => {
    cy.visit('http://localhost:3000/')
  });

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("There is 2 products on the page", () => {
    cy.get(".products article").should("have.length.be.gte", 2);
  });

  it("the user can select the add to cart and the product will be added to the cart.", () => {
    cy.get(".products article div form .btn").first().click({ force: true })
    cy.get(".nav-link ").contains(" My Cart (1) ")
  });
})
