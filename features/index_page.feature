Feature: add layout and information to index
  As an administrator
  In order to keep controll of my bulding
  I would like to be able to see important info on index page and links to important features

  Background:
    Given the following users exist
      | email           | password  | password_confirmation |
      | nubbe@nubbe.com | 12345678  | 12345678              |
    Given the following help request messages exist
      | title   | message         | urgent |
      | Fabian  | With peeing dog | true   |
      | Felix   | In fish church  | false  |
    Given the following news exist
      | title        | description     |
      | house fiesta | big burrito     |
      | new lift     | no more stairs  |

    Scenario: Call for help messages are displayed
      Given I am logged in as "nubbe@nubbe.com"
      Given I am on the index page
      And I should see "Fabian"
      And I should see "With peeing dog"
      And I should not see "Felix"
      And I should see "house fiesta"
      And I should see "big burrito"
      And I should see "new lift"
      Then I should see "no more stairs"
