/// <reference types="cypress" />

describe('example to-do app', () => {
  beforeEach(() => {
    cy.visit('http://localhost:3000/')
  })

  it("The user can click on a product and navigate to the product details page.", () => {
    cy.get(".products article a").first().click()
  });
})
