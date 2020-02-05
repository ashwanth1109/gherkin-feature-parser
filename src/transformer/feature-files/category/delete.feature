@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29093
@Category
Feature: Category - Delete

  Scenario: Administrator can delete a category
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Categories" link in the "Categories" section
    And The "Categories" page is shown
    When The user clicks the "Delete" button for the "Feature" category row in the "Categories" table in the "Categories" page
    Then The following categories are listed in the "Categories" table in the "Categories" page in the following display order:
      | Can Edit | Category Name | Plural Name    | Icon          | Deleted | Can Delete | Can Undelete |
      | true     | Bug           | Bugs           | Bug           | false   | true       | false        |
      | true     | Inquiry       | Inquiries      | Inquiry       | false   | false      | false        |
      | true     | Schedule Item | Schedule Items | Schedule Item | false   | false      | false        |
      | false    | Feature       | Features       | Feature       | true    | false      | true         |
