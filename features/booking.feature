<<<<<<< HEAD
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
=======
Feature: Booking an facility
  As an tenant
  In order to book a time at a facility
  I would like to be able to select a time slott at a facility.

  Scenario: I book time slott at a facility.
    Given I am on the new booking page
    Then I should see "New booking"
    And I click link "Time 15.00-18.00"
    Then I should see "Booking was successfully created."
    And I am on the index booking page
    Then I should see "04 tester 15:00"
>>>>>>> a1e7bc2a0fb4f531c1b5449347dbfcd02ce69214
