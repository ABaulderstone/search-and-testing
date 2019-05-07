import { isThisHour } from "date-fns";

describe("Rails author CRUD", function() {
    before(function(){
        cy.app("clean")
        cy.app("seed")
    });
   
    it("Create a new author", function(){
        cy.visit("/authors/new")
        cy.get("input[type=text]").type("Stephen King")
        cy.contains("Create Author").click()
        cy.contains("Author was successfully created.")
    });
    
    it("Visit a single author", function(){
        cy.visit("/authors")
        cy.get("tbody tr").first().contains("Show").click()
        cy.location("pathname").should("eq", "/authors/1")

    });
});