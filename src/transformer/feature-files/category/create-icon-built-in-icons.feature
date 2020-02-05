@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29951
@Category
Feature: Category - Create - Icon - Built-in icons

  Scenario Outline: Administrator can create a new category: "Icon": Built-in icons
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Categories" link in the "Categories" section
    And The "Categories" page is shown
    And The user clicks the "Create New Category" link in the "Categories" page
    When The user enters the category details in the "New Category" dialog:
      | Category Name    | Plural Name       | Icon   | Default |
      | Customer Feature | Customer Features | <Icon> | false   |
    And The user clicks the "OK" button in the "New Category" dialog
    Then The "New Category" dialog is closed
    And The following categories are listed in the "Categories" table in the "Categories" page in the following display order:
      | Can Edit | Category Name    | Plural Name       | Icon          | Description                     | Display Order | Deleted | Can Delete |
      | true     | Bug              | Bugs              | Bug           | Default category for new cases  | Down          | false   | true       |
      | true     | Feature          | Features          | Feature       |                                 | Down, Up      | false   | true       |
      | true     | Inquiry          | Inquiries         | Inquiry       | Default category for new emails | Down, Up      | false   | false      |
      | true     | Schedule Item    | Schedule Items    | Schedule Item | EBS Scheduling item category    | Down, Up      | false   | false      |
      | true     | Customer Feature | Customer Features | <Icon>        |                                 | Up            | false   | true       |
    Examples:
      | Icon          |
      | Bug           |
      | Feature       |
      | Inquiry       |
      | Schedule Item |
      | Bug Error     |
      | Wrench        |
      | Magnifier     |
      | Key           |
      | Exclamation   |
