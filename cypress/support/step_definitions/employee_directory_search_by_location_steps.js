import { Given, When, Then } from '@badeball/cypress-cucumber-preprocessor';

Given('login to visit the employee directory page for search by location', () => {
    cy.login();
});

Given('I am on the employee directory page in-order to search employee by location', () => {
  cy.visit('/web/index.php/directory/viewDirectory');
});

When('I select Texas R&D from the Location dropdown in the Employee Directory', () => {
    cy.xpath('//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[3]/div/div[2]/div/div/div[2]')
    .click();    
    
    cy.xpath('//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[3]/div/div[2]/div/div')
    .contains('Texas R&D')
    .click();
});

When('I click on the Search button to search employees by location', () => {
    cy.xpath('//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[2]/button[2]').wait(1000).click();
});

Then('I should see a list of employees located in Texas R&D in the Employee Directory', () => {
    cy.xpath('//*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div/div[2]').contains('Texas R&D');
});
