@NotAutomated
@JIRA-Key-MANUSCRIPT-29955
@Category
Feature: Category - Edit - Icon - Upload

  Scenario Outline: Administrator can edit an existing category: "Icon": Upload 16x16 icon
    Given The user is logged in as Administrator
    And The following categories exist in the following display order:
      | Category Name    | Plural Name       | Icon            | Default |
      | Customer Feature | Customer Features | <Original Icon> | false   |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Categories" link in the "Categories" section
    And The "Categories" page is shown
    And The user clicks the "Edit" button for the "Customer Feature" category row in the "Categories" table in the "Categories" page
    When The user enters the category details in the "Edit Category" dialog:
      | Category Name   | Plural Name      | Icon           | Default |
      | Customer Defect | Customer Defects | <Updated Icon> | false   |
    And The user clicks the "OK" button in the "Edit Category" dialog
    Then The "Edit Category" dialog is closed
    And The following categories are listed in the "Categories" table in the "Categories" page in the following display order:
      | Can Edit | Category Name   | Plural Name      | Icon           | Description                     | Display Order | Deleted | Can Delete |
      | true     | Bug             | Bugs             | Bug            | Default category for new cases  | Down          | false   | true       |
      | true     | Feature         | Features         | Feature        |                                 | Down, Up      | false   | true       |
      | true     | Inquiry         | Inquiries        | Inquiry        | Default category for new emails | Down, Up      | false   | false      |
      | true     | Schedule Item   | Schedule Items   | Schedule Item  | EBS Scheduling item category    | Down, Up      | false   | false      |
      | true     | Customer Defect | Customer Defects | <Updated Icon> |                                 | Up            | false   | true       |
    Examples:
      | Original Icon | Updated Icon                      |
      | Bug           | file:///crossover-icon-16x16.jpg  |
      | Feature       | file:///crossover-icon-16x16.jpeg |
      | Inquiry       | file:///crossover-icon-16x16.bmp  |
      | Schedule Item | file:///crossover-icon-16x16.gif  |
      | Bug Error     | file:///crossover-icon-16x16.png  |
      | Wrench        | file:///crossover-icon-16x16.ico  |
