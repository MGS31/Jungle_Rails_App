/// <reference types="cypress" />

describe('example to-do app', () => {
  // beforeEach(() => {
  //   cy.visit('http://localhost:3000/')
  // })

  it('Displays the home screen', () => {
    cy.visit('http://localhost:3000/')
  });

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("There is 2 products on the page", () => {
    cy.get(".products article").should("have.length.be.gte", 2);
  });
})
