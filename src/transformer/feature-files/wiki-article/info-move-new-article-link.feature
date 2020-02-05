@NotAutomated
@JIRA-Key-MANUSCRIPT-31269
@WikiArticle
Feature: Wiki article - Info - Move - New Article Link

  Scenario: Administrator user can move an existing wiki article using the "Info" button: The moved wiki article link remains the same
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Wiki   |
      | Wiki-A |
      | Wiki-B |
    And The following wiki articles exist:
      | ID | Page Title | Description        | Wiki   |
      | W2 | Article-2  | This is Article-2. | Wiki-A |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    And The user clicks the "View Article-2" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    And The user clicks the "Info" button in the "View Wiki Article" page
    And The user is redirected to the "Wiki Article Info" page
    When The user clicks the "Move" button in the "Wiki Article Info" page
    And The "Move Wiki Article" dialog is opened
    And The following dialog details are shown in the "Move Wiki Article" dialog:
      | Message                                                                |
      | Choose the wiki to which you would like to move the article Article-1. |
    And The user enters the wiki article details in the "Move Wiki Article" dialog:
      | Wiki   |
      | Wiki-B |
    And The user clicks the "OK" button in the "Move Wiki Article" dialog
    Then The following dialog details are shown in the "Move Wiki Article" dialog:
      | Message                                       | Link Text         |
      | This article was successfully moved to Wiki-B | Wiki-B: Article-2 |
    And The user clicks the "Wiki-B: Article-2" wiki article link in the "Move Wiki Article" dialog
    And The "View Wiki Article" page is shown in the "View Wiki" page
    And The following wiki article links are listed in the "Hierarchy" tree view in the "View Wiki" page:
      | Link Text | Destination Wiki Article ID |
      | Article-2 | W2                          |