@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-31262
@WikiArticle
Feature: WikiArticle - Sidebar - New Article

  Scenario: Administrator user create a new wiki article by clicking on the "New Article" button on the Sidebar of a Wiki
    Given The user is logged in as Administrator
    And The following wikis exist:
        | Wiki   |
        | Wiki-A |
    And The user hovers over the option "Wiki" present at the left part in the sidebar
    And The user clicks the "Wiki-A" link in the sidebar menu
    And The user is directed to the "Edit Wiki Article" page
    And The user clicks the "New Article" button in the "Edit Wiki Article" page
    And The "New Article" page is shown
    And The user enters the wiki article details in the "New Wiki Article" page:
        | Page Title     | Description  |
        | Wiki Article-1 | Hello World. |
    And The user clicks the "Save" button in the "New Article" page
    And The "Save" dialog is opened
    When The user clicks the "Save and View" button in the "Save" dialog
    Then The "View Wiki Article" page is shown in the "Wiki-A" page
    And The following details are shown in the "View Wiki Article" page:
        | ID | Page Title     | Description  |
        | W2 | Wiki Article-1 | Hello World. |
