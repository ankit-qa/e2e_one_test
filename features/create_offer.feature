Feature:  Open a New investment

  @OpenInvestment
  Scenario:  Property Manager can create a new investment
    Given I navigate to offer page url
    And a property manager logs in
    When I click on Add offer
    Then I add a new property detail mail
    Then I go back to Offer Dashboard
