@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-28853
@Category
Feature: Category - View all

  Scenario: Administrator can view existing categories
    Given The user is logged in as Administrator
    And The following categories exist in the following display order:
      | Category Name | Plural Name | Icon          | Default | Deleted |
      | Test          | Tests       | Schedule Item | false   | false   |
      | Story         | Stories     | Feature       | false   | true    |
      | Deployment    | Deployments | Inquiry       | false   | true    |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    When The user clicks the "Customize Categories" link in the "Categories" section
    Then The "Categories" page is shown
    And The following categories are listed in the "Categories" table in the "Categories" page in the following display order:
      | Can Edit | Category Name | Plural Name    | Icon          | Description                     | Display Order | Deleted | Can Delete | Can Undelete |
      | true     | Bug           | Bugs           | Bug           | Default category for new cases  | Down          | false   | true       | false        |
      | true     | Feature       | Features       | Feature       |                                 | Down, Up      | false   | true       | false        |
      | true     | Inquiry       | Inquiries      | Inquiry       | Default category for new emails | Down, Up      | false   | false      | false        |
      | true     | Schedule Item | Schedule Items | Schedule Item | EBS Scheduling item category    | Down, Up      | false   | false      | false        |
      | true     | Test          | Tests          | Schedule Item |                                 | Up            | false   | true       | false        |
      | false    | Deployment    | Deployments    | Inquiry       |                                 | Inactive      | true    | false      | true         |
      | false    | Story         | Stories        | Feature       |                                 | Inactive      | true    | false      | true         |
