Feature:
In order to check the search result
I want to search on Google and check the browser title

Scenario: Check the browser title after search
    Given I opened "http://www.google.com"
    When I search a "Cheese!"
    Then I should see the browser title has "Cheese! - Google"
    