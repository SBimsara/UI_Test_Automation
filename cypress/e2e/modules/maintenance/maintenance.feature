Feature: Purge Employee Records

  Scenario: Navigate to Purge Employee page with valid admin credentials
    Given User logged in as an admin
    And User navigates to the Maintenance section
    When User enters valid admin credentials in the popup
    Then User should see the "Purge Employee Records" page

  Scenario: Attempt to access Purge Employee page with invalid admin credentials
    Given User logged in as an admin
    And User navigates to the Maintenance section
    When User enters invalid admin credentials in the popup
    Then User should see an error message indicating incorrect credentials

