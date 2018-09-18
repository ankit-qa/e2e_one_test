Feature:  Open a New investment

  @Create_offer
  Scenario:  Property Manager can create a new investment
    Given user is on offer page
    And a property manager logs in
    When I click on Add offer
    Then I add a new property detail mail
    Then I go back to Offer Dashboard
