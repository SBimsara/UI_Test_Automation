Feature: 1.Event Management in Claim Module
  As an admin user,
  I want to manage events in the claim module,
  So that new events can be added and tracked.

  Background:
    Given User logs  for the claim modules for Event Management
    And User navigates to the Claim module for event management

  Scenario: User Created Non Duplicated Even
    When User clicks on the Configuration button for Event Management
    And User clicks on the Events button for Event Management
    And User clicks on the Add button for Event Management
    And User fills out the Event Name and Description for Event Management
    And User clicks on the Save button for Event Management
    Then A success message should be displayed confirming the event was saved


  Scenario: User Created Duplicated Event 
    When User clicks on the Configuration button for Event Management
    And User clicks on the Events button for Event Management
    And User clicks on the Add button for Event Management
    And User fills out the Duplicated Event Name and Description for Event Management
    Then User should see "Already exists" under the Event Name field
    And User clicks on the Save button for Event Management
    Then User should not redirect to any other page from saveEvents  
    