@ResetState
Feature: Index page.

  Scenario: Anonymous user should be redirected to the Login page.
    When The user navigates to the "Index" page
    Then The user is redirected to the "Login" page
