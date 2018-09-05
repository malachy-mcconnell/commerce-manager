
Feature: Test uninstalled Drupal

#  Background:
#    Given I am on any page
#    And I wait for the page to load

  # NOTE see https://www.jeffgeerling.com/blog/2017/testing-redirections-using-behat-and-behat-drupal-extension
  @mink:goutte
  Scenario:  As a Guest
  I should be redirected to the installer page
    When I do not follow redirects
    Given I am on any page
    When I go to "/"
#    And I am on "/"
#    And I wait for the page to load
    And I should see "Redirecting to"
    And I should see "/core/install.php"
    Then I am redirected to "/core/install.php"
#    And I wait for the page to load
    Then the url should match "core/install.php"
    And I should see "Choose language"
