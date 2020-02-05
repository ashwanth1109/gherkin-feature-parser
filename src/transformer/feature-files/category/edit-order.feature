@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-28863
@Category
Feature: Category - Edit Order

  Background:
    Given The user is logged in as Administrator
    And The following categories exist in the following display order:
      | Category Name | Plural Name | Icon          | Default |
      | Test          | Tests       | Schedule Item | false   |
      | Story         | Stories     | Feature       | false   |
      | Deployment    | Deployments | Inquiry       | false   |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Categories" link in the "Categories" section

  Scenario: Administrator can edit an existing category: Display order: Move Up
    Given The "Categories" page is shown
    # NOTE: Please, notice the legacy user interface: the Up/Down arrows.
    When The user clicks the "Up" button for the "Story" category row in the "Categories" table in the "Categories" page
    Then The "Categories" page is reloaded
    And The following categories are listed in the "Categories" table in the "Categories" page in the following display order:
      | Can Edit | Category Name | Plural Name    | Icon          | Description                     | Display Order | Deleted | Can Delete |
      | true     | Bug           | Bugs           | Bug           | Default category for new cases  | Down          | false   | true       |
      | true     | Feature       | Features       | Feature       |                                 | Down, Up      | false   | true       |
      | true     | Inquiry       | Inquiries      | Inquiry       | Default category for new emails | Down, Up      | false   | false      |
      | true     | Schedule Item | Schedule Items | Schedule Item | EBS Scheduling item category    | Down, Up      | false   | false      |
      | true     | Story         | Stories        | Feature       |                                 | Down, Up      | false   | true       |
      | true     | Test          | Tests          | Schedule Item |                                 | Down, Up      | false   | true       |
      | true     | Deployment    | Deployments    | Inquiry       |                                 | Up            | false   | true       |

  Scenario: Administrator can edit an existing category: Display order: Move Down
    Given The "Categories" page is shown
    # NOTE: Please, notice the legacy user interface: the Up/Down arrows.
    When The user clicks the "Down" button for the "Test" category row in the "Categories" table in the "Categories" page
    Then The "Categories" page is reloaded
    # NOTE: Check all the property values of the created category as a part of the below step definition!
    And The following categories are listed in the "Categories" table in the "Categories" page in the following display order:
      | Can Edit | Category Name | Plural Name    | Icon          | Description                     | Display Order | Deleted | Can Delete |
      | true     | Bug           | Bugs           | Bug           | Default category for new cases  | Down          | false   | true       |
      | true     | Feature       | Features       | Feature       |                                 | Down, Up      | false   | true       |
      | true     | Inquiry       | Inquiries      | Inquiry       | Default category for new emails | Down, Up      | false   | false      |
      | true     | Schedule Item | Schedule Items | Schedule Item | EBS Scheduling item category    | Down, Up      | false   | false      |
      | true     | Story         | Stories        | Feature       |                                 | Down, Up      | false   | true       |
      | true     | Test          | Tests          | Schedule Item |                                 | Down, Up      | false   | true       |
      | true     | Deployment    | Deployments    | Inquiry       |                                 | Up            | false   | true       |
