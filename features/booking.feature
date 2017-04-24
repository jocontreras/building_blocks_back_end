Feature: Create facility schedule
  As an  administrator
  In order to let my tenants book facilities
  I would like to be able to create schedules for the facilities.

Scenario: I create a new facility schedule
  Given I am on the create facility schedule page
  Then I should see "New booking schedule "
  And I select "Backyard" from "Name"
  And I click "Save"
  Then I should see "Booking was successfully created."
