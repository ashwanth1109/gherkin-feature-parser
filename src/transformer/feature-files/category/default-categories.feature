@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29365
@Category
Feature: Category - Default categories

  Scenario: System provides the default categories
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    When The user clicks the "Customize Categories" link in the "Categories" section
    Then The "Categories" page is shown
    And The following categories are listed in the "Categories" table in the "Categories" page in the following display order:
      | Can Edit | Category Name | Plural Name    | Icon          | Description                     | Display Order | Deleted | Can Delete |
      | true     | Bug           | Bugs           | Bug           | Default category for new cases  | Down          | false   | true       |
      | true     | Feature       | Features       | Feature       |                                 | Down, Up      | false   | true       |
      | true     | Inquiry       | Inquiries      | Inquiry       | Default category for new emails | Down, Up      | false   | false      |
      | true     | Schedule Item | Schedule Items | Schedule Item | EBS Scheduling item category    | Up            | false   | false      |
