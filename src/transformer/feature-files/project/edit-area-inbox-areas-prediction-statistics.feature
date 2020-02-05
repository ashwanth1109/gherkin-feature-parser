@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29573
@Project
Feature: Project - Edit - Project area - Inbox Areas - Prediction Statistics

  # The actual statistics is hard to demonstrate until we get to the Spam filtering (M2).
  # So here we just show that there is a way to get to the pgAboutAreaStatistics page from the project area dialog
  Scenario Outline: Inbox project areas have links to the "Prediction Statistics" page
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Inbox        | Administrator   |
    And The following project areas exist:
      | Project | Area   | Primary Contact           |
      | Inbox   | <Area> | Project's Primary Contact |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "Inbox" project in the "Projects" section
    And The "Edit" page is shown
    And The user clicks the "Edit" button for the "<Area>" project area row in the "Areas" table in the "Edit Project" page
    And The "Edit Area" dialog is opened
    When The user clicks the "Check Statistics" link in the "Edit Area" dialog
    Then The user is redirected to the "Prediction Statistics for '<Area>' Area" page
    Examples:
      | Area      |
      | Not Spam  |
      | Spam      |
      | Undecided |
