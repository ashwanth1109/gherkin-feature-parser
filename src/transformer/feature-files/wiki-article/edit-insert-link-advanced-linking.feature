@NotAutomated
@JIRA-Key-MANUSCRIPT-31330
@WikiArticle
Feature: Wiki article - Edit - Insert - Link - Advanced Linking

  Scenario: User can see advanced links help
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name   |
      | Wiki-A |
    And The following wiki articles exist:
      | Page Title | Description      | Wiki   |
      | Article-1  | New Wiki Article | Wiki-A |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    And The user clicks the "View Article-1" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    And The user clicks the "Edit" button in the "View Wiki Article" page
    And The user is redirected to the "Edit Wiki Article" page
    And The user clicks the "Insert" dropdown menu in the editor toolbar in the "Edit Wiki Article" page
    And The user selects the "Link" menu item in the "Insert" dropdown menu in the editor toolbar in the "Edit Wiki Article" page
    And The "Insert Link" editor dialog is opened
    When The user clicks the "Show Advanced Linking" link in the "Insert Link" editor dialog
    Then The following help details rows are listed in the "Link Help Details" table in the "Advanced Linking" section in the "Link" dialog:
      | _     | If you type            | We'll link to                                        |
      | Wiki  | Contact Info	         | Article with "Contact Info" headline in this Wiki    |
      | Wiki  | Internal:FAQ           | Article with "FAQ" headline in Wiki named "Internal" |
      | Wiki  | W123                   | Article #W123 in the FogBugz Wiki                    |
      | Case  | 1234                   | Case #1234 in FogBugz                                |
      | Web   | http://www.example.com | http://www.example.com                               |
      | Email | Email@Example.com      | mailto:Email@Example.com                             |
