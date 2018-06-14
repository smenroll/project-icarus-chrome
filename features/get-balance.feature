Feature: Get balance

  Background:
    Given I am testing "Get balance"
    Given I have opened the chrome extension

  Scenario: Get balance with 1 address
    Given There is a wallet stored with 1 addresses
    When I see the balance
    Then I should see the balance number "0.000000"

  Scenario: Get balance with 25 addresses
    Given There is a wallet stored with 25 addresses
    When I see the balance
    Then I should see the balance number "0.000295"

  Scenario: Get balance with 45 addresses
    Given There is a wallet stored with 45 addresses
    When I see the balance
    Then I should see the balance number "0.020295"