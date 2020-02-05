@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29844
@User
Feature: User - Edit - Legacy - Language

  Background:
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page

  Scenario: Language - Use Browser Format
    Given The user enters the user options details in the "User Options" page:
      | Language           |
      | Use Browser Format |
    When The user clicks the "OK" button in the "User Options" page
    Then The "User Options" page titles are in the browser's language

  Scenario Outline: Language - <Language>
    Given The user enters the user options details in the "User Options" page:
      | Language   |
      | <Language> |
    When The user clicks the "OK" button in the "User Options" page
    Then The "User Options" page titles are in the "<Language>" language
    Examples:
      | Language                |
      | English (United States) |
      | French (France)         |
      | German (Germany)        |
      | Portuguese (Brazil)     |
      | Spanish (Spain)         |

