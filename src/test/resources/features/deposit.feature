Feature: deposit
    As a customer
    I want to deposit to my account using ATM

Background:
    Given a customer with id 1 and pin 111 with balance 100 exists
    When I login to ATM with id 1 and pin 111

Scenario: Deposit with amount more than 0
    When I deposit 100 to ATM
    Then my account balance is 200

Scenario: Deposit with amount equal 0
    When I deposit 0 to ATM
    Then my account balance is 100

Scenario: Deposit with amount less than 0
  When I deposit -100 to ATM
  Then my account balance is 100