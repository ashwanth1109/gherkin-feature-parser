@Security
@JIRA-Key-MANUSCRIPT-29075
Feature: Security - User can sign out

  Scenario Outline: User can sign out
    Given The user is logged in as <Account Type>
    When The user logs out
    Then The user is redirected to the "Login" page
    Examples:
      | Account Type  |
      | Normal User   |
      | Administrator |

  Scenario Outline: Signed out user is asked to login again, when opening "Index" page
    Given The user is logged in as <Account Type>
    And The user logs out
    And The user is redirected to the "Login" page
    When The user navigates to the "Index" page
    Then The user is redirected to the "Login" page
    Examples:
      | Account Type  |
      | Normal User   |
      | Administrator |
